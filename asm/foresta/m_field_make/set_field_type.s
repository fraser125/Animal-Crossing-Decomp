lbl_803A39E4:
/* 803A39E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A39E8  7C 08 02 A6 */	mflr r0
/* 803A39EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A39F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A39F4  48 00 12 D9 */	bl mFI_GetFieldId
/* 803A39F8  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 803A39FC  48 01 01 0D */	bl mLd_PlayerManKindCheck
/* 803A3A00  2C 03 00 00 */	cmpwi r3, 0
/* 803A3A04  40 82 00 20 */	bne lbl_803A3A24
/* 803A3A08  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A3A0C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A3A10  3C 63 00 02 */	addis r3, r3, 2
/* 803A3A14  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 803A3A18  48 00 FB A1 */	bl mHS_get_arrange_idx
/* 803A3A1C  38 03 60 00 */	addi r0, r3, 0x6000
/* 803A3A20  48 00 00 0C */	b lbl_803A3A2C
lbl_803A3A24:
/* 803A3A24  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 803A3A28  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
lbl_803A3A2C:
/* 803A3A2C  2C 1F 00 00 */	cmpwi r31, 0
/* 803A3A30  40 82 00 0C */	bne lbl_803A3A3C
/* 803A3A34  38 00 00 00 */	li r0, 0
/* 803A3A38  48 00 00 48 */	b lbl_803A3A80
lbl_803A3A3C:
/* 803A3A3C  7C 1F 00 00 */	cmpw r31, r0
/* 803A3A40  40 82 00 10 */	bne lbl_803A3A50
/* 803A3A44  4B FF 72 E9 */	bl mEv_CheckFirstIntro
/* 803A3A48  2C 03 00 00 */	cmpwi r3, 0
/* 803A3A4C  41 82 00 18 */	beq lbl_803A3A64
lbl_803A3A50:
/* 803A3A50  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A3A54  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A3A58  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803A3A5C  2C 00 00 2F */	cmpwi r0, 0x2f
/* 803A3A60  40 82 00 0C */	bne lbl_803A3A6C
lbl_803A3A64:
/* 803A3A64  38 00 00 01 */	li r0, 1
/* 803A3A68  48 00 00 18 */	b lbl_803A3A80
lbl_803A3A6C:
/* 803A3A6C  2C 1F 40 00 */	cmpwi r31, 0x4000
/* 803A3A70  40 82 00 0C */	bne lbl_803A3A7C
/* 803A3A74  38 00 00 02 */	li r0, 2
/* 803A3A78  48 00 00 08 */	b lbl_803A3A80
lbl_803A3A7C:
/* 803A3A7C  38 00 00 03 */	li r0, 3
lbl_803A3A80:
/* 803A3A80  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A3A84  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A3A88  3C 63 00 02 */	addis r3, r3, 2
/* 803A3A8C  98 03 60 01 */	stb r0, 0x6001(r3)
/* 803A3A90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A3A94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A3A98  7C 08 03 A6 */	mtlr r0
/* 803A3A9C  38 21 00 10 */	addi r1, r1, 0x10
/* 803A3AA0  4E 80 00 20 */	blr 
