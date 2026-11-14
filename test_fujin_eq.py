import json
import unittest
import fujin_eq as eq

class EqualizerTests(unittest.TestCase):
    def test_vendor_frequencies_and_bounds(self):
        self.assertEqual(eq.FREQUENCIES,(31.5,63.,125.,250.,500.,1000.,2000.,4000.,8000.,16000.))
        for values in ([0]*9,[0]*11,[True]+[0]*9,[float('nan')]+[0]*9,[float('inf')]+[0]*9,[6.1]+[0]*9,[-6.1]+[0]*9):
            with self.assertRaises(eq.EqError):eq.validate_gains(values)

    def test_graph_channel_path_and_headroom(self):
        config=json.loads(eq.build_config(eq.VENDOR_PROFILE_1,'physical-headset'))
        args=config['context.modules'][-1]['args']
        graph=args['filter.graph']
        self.assertEqual(len(graph['nodes']),11)
        self.assertEqual(len(graph['links']),10)
        self.assertEqual([n['control']['Freq'] for n in graph['nodes'][1:]],list(eq.FREQUENCIES))
        self.assertAlmostEqual(graph['nodes'][0]['control']['Gain 1'],10**(-4/20))
        self.assertEqual(args['playback.props']['target.object'],'physical-headset')
        self.assertFalse(args['playback.props']['node.autoconnect'])
        self.assertEqual(args['capture.props']['media.class'],'Audio/Sink')
        self.assertNotIn('Audio/Source',json.dumps(config))

    def test_discovery_checks_device_parent_not_just_sink_name(self):
        # Synthetic contract fixture; do not publish a user's complete audio graph.
        dump=[
            {'id':10,'info':{'props':{'media.class':'Audio/Device','device.vendor.id':'0x0600','device.product.id':'0x9c16','device.product.name':'USBFC1S-RGB'}}},
            {'id':20,'info':{'props':{'media.class':'Audio/Sink','device.id':10,'alsa.components':'USB0600:9c16','audio.channels':2,'node.name':'test_USBFC1S-RGB'}}},
            {'id':30,'info':{'props':{'media.class':'Audio/Sink','device.id':99,'alsa.components':'USB0600:9c16','audio.channels':2,'node.name':'unrelated'}}},
        ]
        self.assertIn('USBFC1S-RGB',eq.target_from_dump(dump))
        for item in dump:
            props=item.get('info',{}).get('props',{})
            if props.get('device.product.id')=='0x9c16':props['device.product.id']='0xffff'
        with self.assertRaises(eq.EqError):eq.target_from_dump(dump)

    def test_only_direct_headset_pulse_streams_routed(self):
        physical=63
        streams=[{'index':1,'sink':63,'properties':{'client.api':'pipewire-pulse'}}, {'index':2,'sink':92,'properties':{'client.api':'pipewire-pulse'}}, {'index':3,'sink':63,'properties':{'application.id':'org.fujin.Control'}}, {'index':4,'sink':63,'properties':{'client.api':'pipewire-pulse'}}]
        self.assertEqual([s['index'] for s in eq.route_candidates(streams,physical,{4})],[1])

if __name__=='__main__':unittest.main()
