lbl_8042EA90:
/* 8042EA90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042EA94  7C 08 02 A6 */	mflr r0
/* 8042EA98  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 8042EA9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042EAA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042EAA4  7C 7F 1B 78 */	mr r31, r3
/* 8042EAA8  38 64 61 38 */	addi r3, r4, debug_mode@l /* 0x81166138@l */
/* 8042EAAC  80 63 00 00 */	lwz r3, 0(r3)
/* 8042EAB0  A8 A3 1B 28 */	lha r5, 0x1b28(r3)
/* 8042EAB4  7C A0 07 35 */	extsh. r0, r5
/* 8042EAB8  41 82 00 0C */	beq lbl_8042EAC4
/* 8042EABC  2C 05 00 01 */	cmpwi r5, 1
/* 8042EAC0  40 82 00 60 */	bne lbl_8042EB20
lbl_8042EAC4:
/* 8042EAC4  A8 83 1B 2C */	lha r4, 0x1b2c(r3)
/* 8042EAC8  7C 80 07 35 */	extsh. r0, r4
/* 8042EACC  41 80 00 54 */	blt lbl_8042EB20
/* 8042EAD0  2C 04 00 FF */	cmpwi r4, 0xff
/* 8042EAD4  40 80 00 4C */	bge lbl_8042EB20
/* 8042EAD8  A8 63 1B 2A */	lha r3, 0x1b2a(r3)
/* 8042EADC  7C 60 07 35 */	extsh. r0, r3
/* 8042EAE0  41 80 00 40 */	blt lbl_8042EB20
/* 8042EAE4  2C 03 00 10 */	cmpwi r3, 0x10
/* 8042EAE8  40 80 00 38 */	bge lbl_8042EB20
/* 8042EAEC  1C 03 00 0C */	mulli r0, r3, 0xc
/* 8042EAF0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8042EAF4  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8042EAF8  7C 9F 02 14 */	add r4, r31, r0
/* 8042EAFC  98 A4 01 74 */	stb r5, 0x174(r4)
/* 8042EB00  80 63 00 00 */	lwz r3, 0(r3)
/* 8042EB04  A8 03 1B 2A */	lha r0, 0x1b2a(r3)
/* 8042EB08  A8 A3 1B 2C */	lha r5, 0x1b2c(r3)
/* 8042EB0C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8042EB10  7C 9F 02 14 */	add r4, r31, r0
/* 8042EB14  80 64 01 7C */	lwz r3, 0x17c(r4)
/* 8042EB18  80 84 01 78 */	lwz r4, 0x178(r4)
/* 8042EB1C  4B FA AC B1 */	bl mPlib_Load_PlayerTexAndPallet
lbl_8042EB20:
/* 8042EB20  3C 60 80 64 */	lis r3, data_8064419C@ha /* 0x8064419C@ha */
/* 8042EB24  C0 03 41 9C */	lfs f0, data_8064419C@l(r3)  /* 0x8064419C@l */
/* 8042EB28  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8042EB2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042EB30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042EB34  7C 08 03 A6 */	mtlr r0
/* 8042EB38  38 21 00 10 */	addi r1, r1, 0x10
/* 8042EB3C  4E 80 00 20 */	blr 
