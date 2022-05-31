lbl_80520C90:
/* 80520C90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80520C94  7C 08 02 A6 */	mflr r0
/* 80520C98  90 01 00 24 */	stw r0, 0x24(r1)
/* 80520C9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80520CA0  4B B7 A2 35 */	bl func_8009AED4
/* 80520CA4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80520CA8  7C 7D 1B 78 */	mr r29, r3
/* 80520CAC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80520CB0  7C 9E 23 78 */	mr r30, r4
/* 80520CB4  3F E5 00 02 */	addis r31, r5, 2
/* 80520CB8  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 80520CBC  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 80520CC0  7D 89 03 A6 */	mtctr r12
/* 80520CC4  4E 80 04 21 */	bctrl 
/* 80520CC8  2C 03 00 01 */	cmpwi r3, 1
/* 80520CCC  40 82 00 5C */	bne lbl_80520D28
/* 80520CD0  80 9F 60 4C */	lwz r4, 0x604c(r31)
/* 80520CD4  3C 60 80 6A */	lis r3, ct_data@ha /* 0x806A085C@ha */
/* 80520CD8  38 A3 08 5C */	addi r5, r3, ct_data@l /* 0x806A085C@l */
/* 80520CDC  81 84 00 D0 */	lwz r12, 0xd0(r4)
/* 80520CE0  7F A3 EB 78 */	mr r3, r29
/* 80520CE4  7F C4 F3 78 */	mr r4, r30
/* 80520CE8  7D 89 03 A6 */	mtctr r12
/* 80520CEC  4E 80 04 21 */	bctrl 
/* 80520CF0  3C 60 80 65 */	lis r3, data_8064913C@ha /* 0x8064913C@ha */
/* 80520CF4  3C 80 80 65 */	lis r4, lit_459@ha /* 0x80649140@ha */
/* 80520CF8  38 A3 91 3C */	addi r5, r3, data_8064913C@l /* 0x8064913C@l */
/* 80520CFC  C0 04 91 40 */	lfs f0, lit_459@l(r4)  /* 0x80649140@l */
/* 80520D00  C0 25 00 00 */	lfs f1, 0(r5)
/* 80520D04  3C 60 80 52 */	lis r3, aEGPS_setupAction@ha /* 0x80521148@ha */
/* 80520D08  38 A0 00 FF */	li r5, 0xff
/* 80520D0C  D0 3D 01 44 */	stfs f1, 0x144(r29)
/* 80520D10  38 03 11 48 */	addi r0, r3, aEGPS_setupAction@l /* 0x80521148@l */
/* 80520D14  98 BD 00 D6 */	stb r5, 0xd6(r29)
/* 80520D18  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 80520D1C  EC 01 00 2A */	fadds f0, f1, f0
/* 80520D20  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 80520D24  90 1D 09 9C */	stw r0, 0x99c(r29)
lbl_80520D28:
/* 80520D28  39 61 00 20 */	addi r11, r1, 0x20
/* 80520D2C  4B B7 A1 F5 */	bl func_8009AF20
/* 80520D30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80520D34  7C 08 03 A6 */	mtlr r0
/* 80520D38  38 21 00 20 */	addi r1, r1, 0x20
/* 80520D3C  4E 80 00 20 */	blr 
