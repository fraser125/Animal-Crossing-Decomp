lbl_8054CE40:
/* 8054CE40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054CE44  7C 08 02 A6 */	mflr r0
/* 8054CE48  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8054CE4C  3C E0 80 6A */	lis r7, ct_data@ha /* 0x806A5454@ha */
/* 8054CE50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054CE54  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8054CE58  3C C5 00 02 */	addis r6, r5, 2
/* 8054CE5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054CE60  7C 7F 1B 78 */	mr r31, r3
/* 8054CE64  38 A7 54 54 */	addi r5, r7, ct_data@l /* 0x806A5454@l */
/* 8054CE68  93 C1 00 08 */	stw r30, 8(r1)
/* 8054CE6C  7C 9E 23 78 */	mr r30, r4
/* 8054CE70  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 8054CE74  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 8054CE78  7D 89 03 A6 */	mtctr r12
/* 8054CE7C  4E 80 04 21 */	bctrl 
/* 8054CE80  3C 80 80 65 */	lis r4, data_806494CC@ha /* 0x806494CC@ha */
/* 8054CE84  38 E0 00 00 */	li r7, 0
/* 8054CE88  C0 04 94 CC */	lfs f0, data_806494CC@l(r4)  /* 0x806494CC@l */
/* 8054CE8C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054CE90  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8054CE94  38 C0 FF FF */	li r6, -1
/* 8054CE98  D0 1F 01 C8 */	stfs f0, 0x1c8(r31)
/* 8054CE9C  38 00 00 01 */	li r0, 1
/* 8054CEA0  3C 64 00 03 */	addis r3, r4, 3
/* 8054CEA4  38 A0 00 00 */	li r5, 0
/* 8054CEA8  B0 FF 09 B4 */	sth r7, 0x9b4(r31)
/* 8054CEAC  98 FF 08 30 */	stb r7, 0x830(r31)
/* 8054CEB0  90 DF 09 C0 */	stw r6, 0x9c0(r31)
/* 8054CEB4  98 1F 01 08 */	stb r0, 0x108(r31)
/* 8054CEB8  A0 03 85 3E */	lhz r0, -0x7ac2(r3)
/* 8054CEBC  28 00 FF FF */	cmplwi r0, 0xffff
/* 8054CEC0  40 82 00 10 */	bne lbl_8054CED0
/* 8054CEC4  B0 FF 09 78 */	sth r7, 0x978(r31)
/* 8054CEC8  38 A0 00 3D */	li r5, 0x3d
/* 8054CECC  48 00 00 40 */	b lbl_8054CF0C
lbl_8054CED0:
/* 8054CED0  3C 64 00 02 */	addis r3, r4, 2
/* 8054CED4  80 03 60 04 */	lwz r0, 0x6004(r3)
/* 8054CED8  2C 00 00 1D */	cmpwi r0, 0x1d
/* 8054CEDC  40 82 00 30 */	bne lbl_8054CF0C
/* 8054CEE0  3C 80 80 65 */	lis r4, lit_478@ha /* 0x806494D0@ha */
/* 8054CEE4  3C 60 80 65 */	lis r3, lit_479@ha /* 0x806494D4@ha */
/* 8054CEE8  B0 FF 09 78 */	sth r7, 0x978(r31)
/* 8054CEEC  38 00 80 00 */	li r0, -32768
/* 8054CEF0  C0 24 94 D0 */	lfs f1, lit_478@l(r4)  /* 0x806494D0@l */
/* 8054CEF4  38 A0 00 3D */	li r5, 0x3d
/* 8054CEF8  C0 03 94 D4 */	lfs f0, lit_479@l(r3)  /* 0x806494D4@l */
/* 8054CEFC  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 8054CF00  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8054CF04  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 8054CF08  B0 1F 00 36 */	sth r0, 0x36(r31)
lbl_8054CF0C:
/* 8054CF0C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8054CF10  7F E3 FB 78 */	mr r3, r31
/* 8054CF14  38 C4 85 38 */	addi r6, r4, common_data@l /* 0x81138538@l */
/* 8054CF18  3C C6 00 03 */	addis r6, r6, 3
/* 8054CF1C  7F C4 F3 78 */	mr r4, r30
/* 8054CF20  80 06 88 9C */	lwz r0, -0x7764(r6)
/* 8054CF24  20 00 00 01 */	subfic r0, r0, 1
/* 8054CF28  7C 00 00 34 */	cntlzw r0, r0
/* 8054CF2C  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 8054CF30  98 1F 09 B9 */	stb r0, 0x9b9(r31)
/* 8054CF34  48 00 59 01 */	bl aNSC_setupAction
/* 8054CF38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054CF3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054CF40  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054CF44  7C 08 03 A6 */	mtlr r0
/* 8054CF48  38 21 00 10 */	addi r1, r1, 0x10
/* 8054CF4C  4E 80 00 20 */	blr 
