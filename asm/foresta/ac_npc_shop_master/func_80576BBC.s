lbl_80576BBC:
/* 80576BBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80576BC0  7C 08 02 A6 */	mflr r0
/* 80576BC4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80576BC8  3C E0 80 6C */	lis r7, ct_data@ha /* 0x806BFA9C@ha */
/* 80576BCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80576BD0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80576BD4  3C C5 00 02 */	addis r6, r5, 2
/* 80576BD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80576BDC  7C 7F 1B 78 */	mr r31, r3
/* 80576BE0  38 A7 FA 9C */	addi r5, r7, ct_data@l /* 0x806BFA9C@l */
/* 80576BE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80576BE8  7C 9E 23 78 */	mr r30, r4
/* 80576BEC  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 80576BF0  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 80576BF4  7D 89 03 A6 */	mtctr r12
/* 80576BF8  4E 80 04 21 */	bctrl 
/* 80576BFC  3C 80 80 65 */	lis r4, data_8064999C@ha /* 0x8064999C@ha */
/* 80576C00  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80576C04  C0 04 99 9C */	lfs f0, data_8064999C@l(r4)  /* 0x8064999C@l */
/* 80576C08  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80576C0C  38 A0 00 00 */	li r5, 0
/* 80576C10  38 80 FF FF */	li r4, -1
/* 80576C14  D0 1F 01 C8 */	stfs f0, 0x1c8(r31)
/* 80576C18  38 00 00 01 */	li r0, 1
/* 80576C1C  3C 63 00 03 */	addis r3, r3, 3
/* 80576C20  B0 BF 09 B4 */	sth r5, 0x9b4(r31)
/* 80576C24  98 BF 08 30 */	stb r5, 0x830(r31)
/* 80576C28  90 9F 09 C0 */	stw r4, 0x9c0(r31)
/* 80576C2C  98 1F 01 08 */	stb r0, 0x108(r31)
/* 80576C30  A0 03 85 3E */	lhz r0, -0x7ac2(r3)
/* 80576C34  28 00 FF FF */	cmplwi r0, 0xffff
/* 80576C38  40 82 00 10 */	bne lbl_80576C48
/* 80576C3C  B0 BF 09 78 */	sth r5, 0x978(r31)
/* 80576C40  38 A0 00 3D */	li r5, 0x3d
/* 80576C44  48 00 00 08 */	b lbl_80576C4C
lbl_80576C48:
/* 80576C48  38 A0 00 00 */	li r5, 0
lbl_80576C4C:
/* 80576C4C  7F E3 FB 78 */	mr r3, r31
/* 80576C50  7F C4 F3 78 */	mr r4, r30
/* 80576C54  48 00 58 61 */	bl aNSC_setupAction
/* 80576C58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80576C5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80576C60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80576C64  7C 08 03 A6 */	mtlr r0
/* 80576C68  38 21 00 10 */	addi r1, r1, 0x10
/* 80576C6C  4E 80 00 20 */	blr 
