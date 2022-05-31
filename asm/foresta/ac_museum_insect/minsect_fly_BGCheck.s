lbl_8045BB98:
/* 8045BB98  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045BB9C  3C 80 80 64 */	lis r4, lit_582@ha /* 0x80644620@ha */
/* 8045BBA0  C4 04 46 20 */	lfsu f0, lit_582@l(r4)  /* 0x80644620@l */
/* 8045BBA4  54 00 07 F4 */	rlwinm r0, r0, 0, 0x1f, 0x1a
/* 8045BBA8  B0 03 00 8C */	sth r0, 0x8c(r3)
/* 8045BBAC  C0 63 00 1C */	lfs f3, 0x1c(r3)
/* 8045BBB0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8045BBB4  40 80 00 1C */	bge lbl_8045BBD0
/* 8045BBB8  C0 04 00 00 */	lfs f0, 0(r4)
/* 8045BBBC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8045BBC0  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045BBC4  60 00 00 02 */	ori r0, r0, 2
/* 8045BBC8  B0 03 00 8C */	sth r0, 0x8c(r3)
/* 8045BBCC  48 00 00 28 */	b lbl_8045BBF4
lbl_8045BBD0:
/* 8045BBD0  3C 80 80 64 */	lis r4, lit_1743@ha /* 0x806447A8@ha */
/* 8045BBD4  C4 04 47 A8 */	lfsu f0, lit_1743@l(r4)  /* 0x806447A8@l */
/* 8045BBD8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8045BBDC  40 81 00 18 */	ble lbl_8045BBF4
/* 8045BBE0  C0 04 00 00 */	lfs f0, 0(r4)
/* 8045BBE4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8045BBE8  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045BBEC  60 00 00 04 */	ori r0, r0, 4
/* 8045BBF0  B0 03 00 8C */	sth r0, 0x8c(r3)
lbl_8045BBF4:
/* 8045BBF4  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8045BBF8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8045BBFC  40 80 00 14 */	bge lbl_8045BC10
/* 8045BC00  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045BC04  60 00 00 08 */	ori r0, r0, 8
/* 8045BC08  B0 03 00 8C */	sth r0, 0x8c(r3)
/* 8045BC0C  4E 80 00 20 */	blr 
lbl_8045BC10:
/* 8045BC10  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8045BC14  4C 81 00 20 */	blelr 
/* 8045BC18  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045BC1C  60 00 00 10 */	ori r0, r0, 0x10
/* 8045BC20  B0 03 00 8C */	sth r0, 0x8c(r3)
/* 8045BC24  4E 80 00 20 */	blr 
