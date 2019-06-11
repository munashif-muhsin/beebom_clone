
import 'models/horizontal_list_item.dart';
import 'models/vertical_list_item.dart';
import 'models/video_item.dart';

final List<HorizontalListItem> hList= [
    HorizontalListItem(
      name: 'iPhone XS',
      image:
          'https://assets.pcmag.com/media/images/608616-apple-iphone-xs.jpg?thumb=y'
    ),
    HorizontalListItem(
      name: 'Google Pixel 3',
      image:
          'https://cdn.mos.cms.futurecdn.net/hoxsojoXUTF6KWYDTyWkCF-768-80.jpg'
    ),
    HorizontalListItem(
      name: 'One Plus 7 Pro',
      image:
          'https://assets.mspimages.in/wp-content/uploads/2019/05/OnePlus-7-Pro-1-696x365.jpg'
    ),
    HorizontalListItem(
      name: 'S10 ',
      image:
          'https://cdn.vox-cdn.com/thumbor/buIqyTCGXDEvlFQrFLc74dxZ-F8=/0x0:2040x1360/1200x800/filters:focal(834x907:1160x1233)/cdn.vox-cdn.com/uploads/chorus_image/image/63220002/akrales_190307_3272_0020.0.jpg'
    ),
    HorizontalListItem(
      name: 'Oppo Reno',
      image:
          'https://www.soyacincau.com/wp-content/uploads/2019/04/fbhero_opporeno10x.jpg'
    ),
    HorizontalListItem(
      name: 'Huawei P30 Pro',
      image:
          'https://cdn.vox-cdn.com/thumbor/JFN9QjMk5Qil3U4M8yefQS89u9k=/0x0:960x690/1200x800/filters:focal(415x232:567x384)/cdn.vox-cdn.com/uploads/chorus_image/image/63275001/D2I6_oKX4AI8euX.0.jpg'
    ),
    HorizontalListItem(
      name: 'Nokia 9 Pro',
      image:
          'https://cdn57.androidauthority.net/wp-content/uploads/2019/02/HMD-Global-Nokia-9-00915.jpg'
    ),
  ].toList();

final List<VerticalListItem> vList = [
  VerticalListItem(
    id: 0,
    name: 'Microsoft Unveils Xbox “Project Scarlett” at E3 2019',
    image:
          'https://beebom.com/wp-content/uploads/2019/06/project-scarlett-unveiled.jpg',
    time: 'June 10, 2019',
    likes: 167,
    content: 'At its E3 2019 keynote, Microsoft finally unveiled its next generation console. Named “Project Scarlett”, the Redmond giant is claiming that the next generation Xbox will be the most powerful console ever, and will bring support for a bunch of features that’ll drive the future of gaming. Project Scarlett will come with a custom processor leveraging AMD’s Zen 2 architecture, and Microsoft claimed at the event that Project Scarlett is 4 times more powerful than the Xbox One X, as far as pure processing power is concerned. The next gen Xbox will also come with SSDs, and Microsoft is apparently going to use the SSDs as sort of virtual RAM as well to further improve the performance that Project Scarlett will bring to the table. In the presentation, where various members of Microsoft’s Xbox team shared their thoughts and opinions on the upcoming version of Xbox, the company claimed that the console will bring support for 8K gaming, and frame rates up to 120FPS, which definitely sounds amazing. Moreover, the company also said that Project Scarlett will bring real time ray-tracing with hardware acceleration to consoles, giving game developers the power to deliver extremely photo-realistic scenes in games, and bringing the most immersive gaming experience to players. So far, Microsoft hasn’t given us a sneak-peek into what Xbox Project Scarlett might look like, or any specific numbers about its performance or its spec-sheet, but the company’s claims about its performance definitely sound like the next generation of Xbox will give solid competition to Sony’s PlayStation 5 when it comes out. As far as launch dates are concerned, Microsoft only said that Project Scarlett will come in 2020 during the Holiday season. We’ll definitely learn more about Project Scarlett over the coming months, so stay tuned for more coverage about the future of gaming consoles.'
  ),
  VerticalListItem(
    id: 1,
    name: '11 New macOS Catalina Features You Should Know',
    image:
          'https://beebom.com/wp-content/uploads/2019/06/music-podcasts-tv-apps-macos-catalina.jpg',
    time: 'June 6, 2019',
    likes: 167,
    content: 'macOS 10.15 has finally been announced by Apple, and it brings along a bunch of new features and performance improvements to the Mac. We’ve been playing around with macOS Catalina since the keynote ended, and here are 11 new macOS Catalina features and changes you should know. Apple finally realised that the company was making iTunes do too many things and it was quickly becoming a cluttered mess of a software. So, iTunes has been split into three separate apps, all of which focus on a particular use-case instead of trying to be a one-stop solution for too many problems. With macOS Catalina, you’ll get three apps called ‘Music’, ‘Podcasts’, and ‘Apple TV’ all of which are pretty self-explanatory as to what they’ll do. Also, if you’re wondering how you’ll sync your iPhone and iPad now that iTunes is dead, well, you’ll now see those devices connected to your Mac in the Finder, and you can sync, update, restore, and backup your devices with just as much ease as with iTunes. Apple has also brought over Screen Time from iOS to macOS Catalina, so you can monitor your Mac usage with ease, and even make use of all the Screen Time features that are available on iOS. You can set app timers to ensure you don’t spend too much time on distracting apps, and you can use Downtime to ensure you catch up on your sleep. It’s a pretty handy tool to get a bird’s eye view of your Mac usage, and control it if needed. Find My is a new app that brings both Find My Mac, and Find My Friends into one single place. With Find My, you can always locate your Mac, and Apple has improved this to ensure that if your Mac gets stolen, you can find its location even if its turned off! According to Apple, your MacBook will now act as a low energy Bluetooth beacon, constantly sending out small packets of information to nearby Apple devices, and these devices will act like a mesh network of sorts to relay the location of your MacBook back to you, making it easier to find a lost or stolen laptop. Among some of the coolest things that Apple showed off in macOS Catalina, Voice Control is an accessibility feature that makes it easier for users with motor-disabilities to use their Mac (and their iPhones as well) using just their voice. Users will be able to control everything on their Mac using just their voice, and it’s just amazing. While Voice Control isn’t yet available in the first developer beta for macOS Catalina, you can check out the official video demo to see what it works like. For a long time, apps like Duet have existed in the App Store for the sole purpose of allowing users to use their iPad as an external display for the Mac. Well, macOS Catalina comes with a feature called Sidecar, which is basically Duet, but it’s now natively supported by macOS. Sidecar will allow users to use their iPad as a secondary display for their Mac, and it works both wired, and wirelessly, which is just awesome. In conjunction with Find My, macOS Catalina is also bringing Activation Lock as we know it from iOS, to the Mac. With Activation Lock, if someone steals your Mac, they won’t be able to get it to work until you log in with your Apple ID. Activation Lock will be available on MacBooks that come with the T2 security chip.'
  ),
  VerticalListItem(
    id: 2,
    name: 'Google Stadia Pricing and Availability Announced',
    image:
          'https://beebom.com/wp-content/uploads/2019/06/google-stadia-pricing-availability.jpg',
    time: 'June 7, 2019',
    likes: 167,
    content: 'Google has finally given us some more details around its new game streaming service. Unveiled back in March this year, Stadia is a game streaming service that Google claims will give users a true gaming experience with games running at 60FPS with HDR, in 4K — however, a fast internet connection will obviously be a requirement for that. You can pre-order the Google Stadia Founder’s Edition bundle right now on the Google Store for \$129 to get access to what Google claims is nearly \$300 worth of stuff. If you do pre-order the Stadia Founder’s Edition, you’ll get 3 months of Stadia Pro subscription, and a 3 month Buddy Pass, along with a limited edition Stadia Controller in Night Blue, a Chromecast Ultra, and prioritised access to selecting your Stadia name. You can also purchase Stadia controllers independently for \$69.99 each, in one of three colors: Clearly White, Just Black, and Wasabi. A Chromecast Ultra will set you back by \$59.'
  ),
  VerticalListItem(
    id: 3,
    name: 'Bethesda Announces Its Own Cloud Gaming Service ‘Orion’ at E3 2019',
    image:
          'https://beebom.com/wp-content/uploads/2019/06/bethesda-e3-orion.jpg',
    time: 'June 10, 2019',
    likes: 167,
    content: 'At E3 2019, Bethesda Softworks has announced that it’s bringing its very own platform that will improve cloud gaming performance. Orion, as the platform is called, can reportedly be added to a variety of games and be used in different game streaming services — it’s not really competing against players such as Stadia, but it’s trying to complement their capabilities and make them more accessible to players. According to Bethesda’s director of publishing James Altman, “[Orion] can be put into any game engine, it can be used with any streaming platform to provide a better experience for any consumer playing that game on that platform and to deliver it at a lower cost for whoever’s serving the data.” The company is claiming that Orion can improve game streaming by a considerable margin. According to Bethesda, turning on just one of Orion’s features can cut down on bandwidth requirement by 40%, it also reportedly reduces the encoding time for a frame of video by 30%, and the compute power needed by 20%. All of those things make Orion sound like a pretty solid option for game streaming services to apply to their systems. After all, if Bethesda’s claims stand true, Orion could reduce the internet connection speeds required by game streaming services to provide a seamless experience to players, it could also make things easier and more cost-effective for game streaming providers by reducing the number of data centres required for a smooth, lag-free experience, and more. Bethesda hasn’t announced a release date for Orion, but the company will be launching a limited beta test later this year. In the beta, players will be able to play Doom at 60FPS in 4K; and that sounds incredible.'
  ),
].toList();

final List<VideoItem> videoList = [
  VideoItem(comments: 31, likes: 542, name: '5 cool Xiaomi Gadgets you didnt know about.', date: '14 May, 2019', image: 'https://i.ytimg.com/vi/pAFae9yasG0/mqdefault.jpg'),
  VideoItem(comments: 3, likes: 287, name: 'No Poco F2?', date: '13 May, 2019', image: 'https://i.ytimg.com/vi/90wUcfWGBA8/mqdefault.jpg'),
  VideoItem(comments: 32, likes: 823, name: 'This Phone is for Hackers', date: '12 May, 2019', image: 'https://i.ytimg.com/vi/kdSZdcBhSkA/mqdefault.jpg'),
  VideoItem(comments: 32, likes: 823, name: 'OnePlus 7 First impressions', date: '12 May, 2019', image: 'https://i.ytimg.com/vi/zlexXP2sv7M/mqdefault.jpg'),
  VideoItem(comments: 32, likes: 823, name: 'OnePlus 7 Pro: Should you buy?', date: '12 May, 2019', image: 'https://i.ytimg.com/vi/QkmUo94jkHo/mqdefault.jpg'),
  VideoItem(comments: 32, likes: 823, name: 'Android Q: Top 7 Features', date: '12 May, 2019', image: 'https://i.ytimg.com/vi/PgIstDzzncs/mqdefault.jpg'),
].toList();