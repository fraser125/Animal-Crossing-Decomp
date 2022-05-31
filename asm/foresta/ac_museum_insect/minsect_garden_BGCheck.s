lbl_8045BC28:
/* 8045BC28  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045BC2C  3C 80 80 64 */	lis r4, lit_1741@ha /* 0x806447A0@ha */
/* 8045BC30  C4 04 47 A0 */	lfsu f0, lit_1741@l(r4)  /* 0x806447A0@l */
/* 8045BC34  54 00 07 F4 */	rlwinm r0, r0, 0, 0x1f, 0x1a
/* 8045BC38  B0 03 00 8C */	sth r0, 0x8c(r3)
/* 8045BC3C  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045BC40  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 8045BC44  B0 03 00 8C */	sth r0, 0x8c(r3)
/* 8045BC48  C0 63 00 1C */	lfs f3, 0x1c(r3)
/* 8045BC4C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8045BC50  40 80 00 1C */	bge lbl_8045BC6C
/* 8045BC54  C0 04 00 00 */	lfs f0, 0(r4)
/* 8045BC58  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8045BC5C  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045BC60  60 00 00 02 */	ori r0, r0, 2
/* 8045BC64  B0 03 00 8C */	sth r0, 0x8c(r3)
/* 8045BC68  48 00 00 28 */	b lbl_8045BC90
lbl_8045BC6C:
/* 8045BC6C  3C 80 80 64 */	lis r4, lit_1742@ha /* 0x806447A4@ha */
/* 8045BC70  C4 04 47 A4 */	lfsu f0, lit_1742@l(r4)  /* 0x806447A4@l */
/* 8045BC74  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8045BC78  40 81 00 18 */	ble lbl_8045BC90
/* 8045BC7C  C0 04 00 00 */	lfs f0, 0(r4)
/* 8045BC80  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8045BC84  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045BC88  60 00 00 04 */	ori r0, r0, 4
/* 8045BC8C  B0 03 00 8C */	sth r0, 0x8c(r3)
lbl_8045BC90:
/* 8045BC90  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8045BC94  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8045BC98  40 80 00 18 */	bge lbl_8045BCB0
/* 8045BC9C  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 8045BCA0  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045BCA4  60 00 00 08 */	ori r0, r0, 8
/* 8045BCA8  B0 03 00 8C */	sth r0, 0x8c(r3)
/* 8045BCAC  48 00 00 1C */	b lbl_8045BCC8
lbl_8045BCB0:
/* 8045BCB0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8045BCB4  40 81 00 14 */	ble lbl_8045BCC8
/* 8045BCB8  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 8045BCBC  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045BCC0  60 00 00 10 */	ori r0, r0, 0x10
/* 8045BCC4  B0 03 00 8C */	sth r0, 0x8c(r3)
lbl_8045BCC8:
/* 8045BCC8  3C 80 80 64 */	lis r4, lit_1349@ha /* 0x8064473C@ha */
/* 8045BCCC  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 8045BCD0  C0 04 47 3C */	lfs f0, lit_1349@l(r4)  /* 0x8064473C@l */
/* 8045BCD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045BCD8  4C 80 00 20 */	bgelr 
/* 8045BCDC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8045BCE0  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045BCE4  60 00 00 20 */	ori r0, r0, 0x20
/* 8045BCE8  B0 03 00 8C */	sth r0, 0x8c(r3)
/* 8045BCEC  4E 80 00 20 */	blr 
