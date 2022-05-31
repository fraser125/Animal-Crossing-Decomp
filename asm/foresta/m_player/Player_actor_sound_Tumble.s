lbl_804DF3C8:
/* 804DF3C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF3CC  7C 08 02 A6 */	mflr r0
/* 804DF3D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF3D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DF3D8  7C 7F 1B 78 */	mr r31, r3
/* 804DF3DC  80 03 00 98 */	lwz r0, 0x98(r3)
/* 804DF3E0  54 03 AE BE */	rlwinm r3, r0, 0x15, 0x1a, 0x1f
/* 804DF3E4  48 14 F2 6D */	bl sAdo_Get_KokeruLabel
/* 804DF3E8  7C 60 1B 78 */	mr r0, r3
/* 804DF3EC  7F E3 FB 78 */	mr r3, r31
/* 804DF3F0  7C 04 03 78 */	mr r4, r0
/* 804DF3F4  4B FF FE 95 */	bl Player_actor_set_sound_common2
/* 804DF3F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF3FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DF400  7C 08 03 A6 */	mtlr r0
/* 804DF404  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF408  4E 80 00 20 */	blr 
