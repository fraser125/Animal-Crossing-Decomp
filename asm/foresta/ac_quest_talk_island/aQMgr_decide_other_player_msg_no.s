lbl_80490B84:
/* 80490B84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80490B88  7C 08 02 A6 */	mflr r0
/* 80490B8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80490B90  39 61 00 30 */	addi r11, r1, 0x30
/* 80490B94  4B C0 A3 35 */	bl func_8009AEC8
/* 80490B98  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80490B9C  7C 9A 23 78 */	mr r26, r4
/* 80490BA0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80490BA4  3B C0 00 00 */	li r30, 0
/* 80490BA8  3C 63 00 02 */	addis r3, r3, 2
/* 80490BAC  3B A0 FF FF */	li r29, -1
/* 80490BB0  80 A3 61 3C */	lwz r5, 0x613c(r3)
/* 80490BB4  28 05 00 00 */	cmplwi r5, 0
/* 80490BB8  41 82 00 18 */	beq lbl_80490BD0
/* 80490BBC  38 80 00 07 */	li r4, 7
/* 80490BC0  38 C0 00 00 */	li r6, 0
/* 80490BC4  38 63 34 50 */	addi r3, r3, 0x3450
/* 80490BC8  4B FF FE 69 */	bl aQMgr_get_other_memory
/* 80490BCC  7C 7E 1B 78 */	mr r30, r3
lbl_80490BD0:
/* 80490BD0  28 1E 00 00 */	cmplwi r30, 0
/* 80490BD4  41 82 00 98 */	beq lbl_80490C6C
/* 80490BD8  4B BC C1 1D */	bl fqrand
/* 80490BDC  3C 60 80 64 */	lis r3, lit_1217@ha /* 0x80644C48@ha */
/* 80490BE0  3B 60 00 00 */	li r27, 0
/* 80490BE4  C0 03 4C 48 */	lfs f0, lit_1217@l(r3)  /* 0x80644C48@l */
/* 80490BE8  3B E0 00 01 */	li r31, 1
/* 80490BEC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80490BF0  FC 00 00 1E */	fctiwz f0, f0
/* 80490BF4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80490BF8  83 81 00 0C */	lwz r28, 0xc(r1)
lbl_80490BFC:
/* 80490BFC  7F C3 F3 78 */	mr r3, r30
/* 80490C00  7F E4 E0 30 */	slw r4, r31, r28
/* 80490C04  4B F2 34 51 */	bl mISL_CheckPlayerAction
/* 80490C08  2C 03 00 01 */	cmpwi r3, 1
/* 80490C0C  40 82 00 44 */	bne lbl_80490C50
/* 80490C10  3C 60 80 69 */	lis r3, msg_table_1486@ha /* 0x8068B3C0@ha */
/* 80490C14  57 40 10 3A */	slwi r0, r26, 2
/* 80490C18  38 63 B3 C0 */	addi r3, r3, msg_table_1486@l /* 0x8068B3C0@l */
/* 80490C1C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80490C20  7F BC 02 14 */	add r29, r28, r0
/* 80490C24  4B F2 EA 85 */	bl func_803BF6A8
/* 80490C28  7F C5 F3 78 */	mr r5, r30
/* 80490C2C  38 80 00 00 */	li r4, 0
/* 80490C30  38 C0 00 08 */	li r6, 8
/* 80490C34  4B F2 F0 21 */	bl mMsg_Set_free_str
/* 80490C38  4B F2 EA 71 */	bl func_803BF6A8
/* 80490C3C  38 BE 00 08 */	addi r5, r30, 8
/* 80490C40  38 80 00 01 */	li r4, 1
/* 80490C44  38 C0 00 08 */	li r6, 8
/* 80490C48  4B F2 F0 0D */	bl mMsg_Set_free_str
/* 80490C4C  48 00 00 20 */	b lbl_80490C6C
lbl_80490C50:
/* 80490C50  3B 9C 00 01 */	addi r28, r28, 1
/* 80490C54  2C 1C 00 20 */	cmpwi r28, 0x20
/* 80490C58  41 80 00 08 */	blt lbl_80490C60
/* 80490C5C  3B 80 00 00 */	li r28, 0
lbl_80490C60:
/* 80490C60  3B 7B 00 01 */	addi r27, r27, 1
/* 80490C64  2C 1B 00 03 */	cmpwi r27, 3
/* 80490C68  41 80 FF 94 */	blt lbl_80490BFC
lbl_80490C6C:
/* 80490C6C  7F A3 EB 78 */	mr r3, r29
/* 80490C70  39 61 00 30 */	addi r11, r1, 0x30
/* 80490C74  4B C0 A2 A1 */	bl func_8009AF14
/* 80490C78  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80490C7C  7C 08 03 A6 */	mtlr r0
/* 80490C80  38 21 00 30 */	addi r1, r1, 0x30
/* 80490C84  4E 80 00 20 */	blr 
