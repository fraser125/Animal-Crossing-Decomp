lbl_804D5BC4:
/* 804D5BC4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804D5BC8  7C 08 02 A6 */	mflr r0
/* 804D5BCC  90 01 00 84 */	stw r0, 0x84(r1)
/* 804D5BD0  39 61 00 80 */	addi r11, r1, 0x80
/* 804D5BD4  4B BC 52 FD */	bl func_8009AED0
/* 804D5BD8  3C E0 80 64 */	lis r7, lit_1051@ha /* 0x80646A04@ha */
/* 804D5BDC  7C 9E 23 78 */	mr r30, r4
/* 804D5BE0  38 87 6A 04 */	addi r4, r7, lit_1051@l /* 0x80646A04@l */
/* 804D5BE4  80 FE 00 00 */	lwz r7, 0(r30)
/* 804D5BE8  81 44 00 00 */	lwz r10, 0(r4)
/* 804D5BEC  7C 7D 1B 78 */	mr r29, r3
/* 804D5BF0  81 24 00 04 */	lwz r9, 4(r4)
/* 804D5BF4  7C BC 2B 78 */	mr r28, r5
/* 804D5BF8  81 04 00 08 */	lwz r8, 8(r4)
/* 804D5BFC  7C DF 33 78 */	mr r31, r6
/* 804D5C00  80 DE 00 04 */	lwz r6, 4(r30)
/* 804D5C04  38 61 00 0C */	addi r3, r1, 0xc
/* 804D5C08  80 1E 00 08 */	lwz r0, 8(r30)
/* 804D5C0C  38 81 00 08 */	addi r4, r1, 8
/* 804D5C10  91 41 00 4C */	stw r10, 0x4c(r1)
/* 804D5C14  38 A1 00 34 */	addi r5, r1, 0x34
/* 804D5C18  91 21 00 50 */	stw r9, 0x50(r1)
/* 804D5C1C  91 01 00 54 */	stw r8, 0x54(r1)
/* 804D5C20  90 E1 00 34 */	stw r7, 0x34(r1)
/* 804D5C24  90 C1 00 38 */	stw r6, 0x38(r1)
/* 804D5C28  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804D5C2C  4B EC FB 35 */	bl mFI_Wpos2BlockNum
/* 804D5C30  80 A1 00 4C */	lwz r5, 0x4c(r1)
/* 804D5C34  38 61 00 40 */	addi r3, r1, 0x40
/* 804D5C38  80 C1 00 50 */	lwz r6, 0x50(r1)
/* 804D5C3C  38 81 00 28 */	addi r4, r1, 0x28
/* 804D5C40  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804D5C44  90 A1 00 28 */	stw r5, 0x28(r1)
/* 804D5C48  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 804D5C4C  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 804D5C50  80 C1 00 08 */	lwz r6, 8(r1)
/* 804D5C54  90 01 00 30 */	stw r0, 0x30(r1)
/* 804D5C58  4B EC FD BD */	bl mFI_LposInBKtoWpos
/* 804D5C5C  80 9E 00 00 */	lwz r4, 0(r30)
/* 804D5C60  2C 1C 00 03 */	cmpwi r28, 3
/* 804D5C64  80 7E 00 04 */	lwz r3, 4(r30)
/* 804D5C68  80 1E 00 08 */	lwz r0, 8(r30)
/* 804D5C6C  90 81 00 58 */	stw r4, 0x58(r1)
/* 804D5C70  90 61 00 5C */	stw r3, 0x5c(r1)
/* 804D5C74  90 01 00 60 */	stw r0, 0x60(r1)
/* 804D5C78  41 82 00 60 */	beq lbl_804D5CD8
/* 804D5C7C  40 80 00 14 */	bge lbl_804D5C90
/* 804D5C80  2C 1C 00 01 */	cmpwi r28, 1
/* 804D5C84  41 82 00 18 */	beq lbl_804D5C9C
/* 804D5C88  40 80 00 38 */	bge lbl_804D5CC0
/* 804D5C8C  48 00 00 88 */	b lbl_804D5D14
lbl_804D5C90:
/* 804D5C90  2C 1C 00 05 */	cmpwi r28, 5
/* 804D5C94  40 80 00 80 */	bge lbl_804D5D14
/* 804D5C98  48 00 00 58 */	b lbl_804D5CF0
lbl_804D5C9C:
/* 804D5C9C  3C 60 80 64 */	lis r3, lit_1075@ha /* 0x80646A14@ha */
/* 804D5CA0  3C 80 80 64 */	lis r4, lit_1074@ha /* 0x80646A10@ha */
/* 804D5CA4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 804D5CA8  C0 23 6A 14 */	lfs f1, lit_1075@l(r3)  /* 0x80646A14@l */
/* 804D5CAC  C0 44 6A 10 */	lfs f2, lit_1074@l(r4)  /* 0x80646A10@l */
/* 804D5CB0  EC 01 00 2A */	fadds f0, f1, f0
/* 804D5CB4  EC 02 00 2A */	fadds f0, f2, f0
/* 804D5CB8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804D5CBC  48 00 00 60 */	b lbl_804D5D1C
lbl_804D5CC0:
/* 804D5CC0  3C 60 80 64 */	lis r3, lit_1075@ha /* 0x80646A14@ha */
/* 804D5CC4  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 804D5CC8  C0 03 6A 14 */	lfs f0, lit_1075@l(r3)  /* 0x80646A14@l */
/* 804D5CCC  EC 01 00 28 */	fsubs f0, f1, f0
/* 804D5CD0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804D5CD4  48 00 00 48 */	b lbl_804D5D1C
lbl_804D5CD8:
/* 804D5CD8  3C 60 80 64 */	lis r3, lit_1075@ha /* 0x80646A14@ha */
/* 804D5CDC  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 804D5CE0  C0 03 6A 14 */	lfs f0, lit_1075@l(r3)  /* 0x80646A14@l */
/* 804D5CE4  EC 01 00 28 */	fsubs f0, f1, f0
/* 804D5CE8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 804D5CEC  48 00 00 30 */	b lbl_804D5D1C
lbl_804D5CF0:
/* 804D5CF0  3C 60 80 64 */	lis r3, lit_1075@ha /* 0x80646A14@ha */
/* 804D5CF4  3C 80 80 64 */	lis r4, lit_1074@ha /* 0x80646A10@ha */
/* 804D5CF8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 804D5CFC  C0 23 6A 14 */	lfs f1, lit_1075@l(r3)  /* 0x80646A14@l */
/* 804D5D00  C0 44 6A 10 */	lfs f2, lit_1074@l(r4)  /* 0x80646A10@l */
/* 804D5D04  EC 01 00 2A */	fadds f0, f1, f0
/* 804D5D08  EC 02 00 2A */	fadds f0, f2, f0
/* 804D5D0C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 804D5D10  48 00 00 0C */	b lbl_804D5D1C
lbl_804D5D14:
/* 804D5D14  38 60 00 00 */	li r3, 0
/* 804D5D18  48 00 00 7C */	b lbl_804D5D94
lbl_804D5D1C:
/* 804D5D1C  2C 1F 00 00 */	cmpwi r31, 0
/* 804D5D20  41 82 00 24 */	beq lbl_804D5D44
/* 804D5D24  3C 80 80 64 */	lis r4, lit_1076@ha /* 0x80646A18@ha */
/* 804D5D28  7F A3 EB 78 */	mr r3, r29
/* 804D5D2C  38 A4 6A 18 */	addi r5, r4, lit_1076@l /* 0x80646A18@l */
/* 804D5D30  38 81 00 58 */	addi r4, r1, 0x58
/* 804D5D34  C0 25 00 00 */	lfs f1, 0(r5)
/* 804D5D38  4B FF FD E5 */	bl Player_actor_Search_exist_npc_inCircle_forWade
/* 804D5D3C  2C 03 00 00 */	cmpwi r3, 0
/* 804D5D40  40 82 00 50 */	bne lbl_804D5D90
lbl_804D5D44:
/* 804D5D44  81 41 00 58 */	lwz r10, 0x58(r1)
/* 804D5D48  3C 60 80 64 */	lis r3, lit_1077@ha /* 0x80646A1C@ha */
/* 804D5D4C  81 21 00 5C */	lwz r9, 0x5c(r1)
/* 804D5D50  38 A3 6A 1C */	addi r5, r3, lit_1077@l /* 0x80646A1C@l */
/* 804D5D54  81 01 00 60 */	lwz r8, 0x60(r1)
/* 804D5D58  38 61 00 1C */	addi r3, r1, 0x1c
/* 804D5D5C  80 FE 00 00 */	lwz r7, 0(r30)
/* 804D5D60  38 81 00 10 */	addi r4, r1, 0x10
/* 804D5D64  80 DE 00 04 */	lwz r6, 4(r30)
/* 804D5D68  80 1E 00 08 */	lwz r0, 8(r30)
/* 804D5D6C  91 41 00 10 */	stw r10, 0x10(r1)
/* 804D5D70  C0 25 00 00 */	lfs f1, 0(r5)
/* 804D5D74  91 21 00 14 */	stw r9, 0x14(r1)
/* 804D5D78  91 01 00 18 */	stw r8, 0x18(r1)
/* 804D5D7C  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 804D5D80  90 C1 00 20 */	stw r6, 0x20(r1)
/* 804D5D84  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D5D88  4B EB 9E 4D */	bl mCoBG_ScrollCheck
/* 804D5D8C  48 00 00 08 */	b lbl_804D5D94
lbl_804D5D90:
/* 804D5D90  38 60 00 00 */	li r3, 0
lbl_804D5D94:
/* 804D5D94  39 61 00 80 */	addi r11, r1, 0x80
/* 804D5D98  4B BC 51 85 */	bl func_8009AF1C
/* 804D5D9C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804D5DA0  7C 08 03 A6 */	mtlr r0
/* 804D5DA4  38 21 00 80 */	addi r1, r1, 0x80
/* 804D5DA8  4E 80 00 20 */	blr 
