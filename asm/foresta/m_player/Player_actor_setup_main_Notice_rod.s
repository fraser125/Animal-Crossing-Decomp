lbl_804F6528:
/* 804F6528  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F652C  7C 08 02 A6 */	mflr r0
/* 804F6530  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F6534  39 61 00 20 */	addi r11, r1, 0x20
/* 804F6538  4B BA 49 95 */	bl func_8009AECC
/* 804F653C  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804F6540  7C 7F 1B 78 */	mr r31, r3
/* 804F6544  C0 05 65 68 */	lfs f0, lit_604@l(r5)  /* 0x80646568@l */
/* 804F6548  38 60 00 00 */	li r3, 0
/* 804F654C  7C 9B 23 78 */	mr r27, r4
/* 804F6550  D0 1F 0D 18 */	stfs f0, 0xd18(r31)
/* 804F6554  90 7F 0D 1C */	stw r3, 0xd1c(r31)
/* 804F6558  A8 1F 0D 60 */	lha r0, 0xd60(r31)
/* 804F655C  B0 1F 0D 24 */	sth r0, 0xd24(r31)
/* 804F6560  90 7F 0D 28 */	stw r3, 0xd28(r31)
/* 804F6564  90 7F 0D 2C */	stw r3, 0xd2c(r31)
/* 804F6568  90 7F 0D 30 */	stw r3, 0xd30(r31)
/* 804F656C  83 DF 0F 30 */	lwz r30, 0xf30(r31)
/* 804F6570  28 1E 00 00 */	cmplwi r30, 0
/* 804F6574  83 BE 02 90 */	lwz r29, 0x290(r30)
/* 804F6578  41 82 00 6C */	beq lbl_804F65E4
/* 804F657C  2C 1D 00 00 */	cmpwi r29, 0
/* 804F6580  41 80 00 64 */	blt lbl_804F65E4
/* 804F6584  4B EE 55 91 */	bl mPlib_Get_space_putin_item
/* 804F6588  7C 7C 1B 79 */	or. r28, r3, r3
/* 804F658C  41 80 00 30 */	blt lbl_804F65BC
/* 804F6590  81 9E 02 14 */	lwz r12, 0x214(r30)
/* 804F6594  7F C3 F3 78 */	mr r3, r30
/* 804F6598  7D 89 03 A6 */	mtctr r12
/* 804F659C  4E 80 04 21 */	bctrl 
/* 804F65A0  7C 64 1B 78 */	mr r4, r3
/* 804F65A4  7F 83 E3 78 */	mr r3, r28
/* 804F65A8  38 A0 00 00 */	li r5, 0
/* 804F65AC  4B FE 0D F9 */	bl Player_actor_putin_item
/* 804F65B0  38 00 00 01 */	li r0, 1
/* 804F65B4  90 1F 0D 20 */	stw r0, 0xd20(r31)
/* 804F65B8  48 00 00 0C */	b lbl_804F65C4
lbl_804F65BC:
/* 804F65BC  38 00 00 00 */	li r0, 0
/* 804F65C0  90 1F 0D 20 */	stw r0, 0xd20(r31)
lbl_804F65C4:
/* 804F65C4  2C 1D 00 29 */	cmpwi r29, 0x29
/* 804F65C8  40 80 00 24 */	bge lbl_804F65EC
/* 804F65CC  7F A3 EB 78 */	mr r3, r29
/* 804F65D0  4B EF 8E 31 */	bl mSM_CHECK_LAST_FISH_GET
/* 804F65D4  90 7F 0D 2C */	stw r3, 0xd2c(r31)
/* 804F65D8  7F A3 EB 78 */	mr r3, r29
/* 804F65DC  4B EF 8D 65 */	bl mSM_COLLECT_FISH_SET
/* 804F65E0  48 00 00 0C */	b lbl_804F65EC
lbl_804F65E4:
/* 804F65E4  38 00 00 00 */	li r0, 0
/* 804F65E8  90 1F 0D 20 */	stw r0, 0xd20(r31)
lbl_804F65EC:
/* 804F65EC  2C 1D 00 26 */	cmpwi r29, 0x26
/* 804F65F0  40 82 00 0C */	bne lbl_804F65FC
/* 804F65F4  3C 60 80 00 */	lis r3, 0x8000
/* 804F65F8  4B EB DA 21 */	bl mISL_SetNowPlayerAction
lbl_804F65FC:
/* 804F65FC  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804F6600  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804F6604  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804F6608  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804F660C  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F6610  3C 60 80 65 */	lis r3, lit_9485@ha /* 0x806484C8@ha */
/* 804F6614  C0 83 84 C8 */	lfs f4, lit_9485@l(r3)  /* 0x806484C8@l */
/* 804F6618  7F E3 FB 78 */	mr r3, r31
/* 804F661C  FC 40 08 90 */	fmr f2, f1
/* 804F6620  7F 64 DB 78 */	mr r4, r27
/* 804F6624  38 A0 00 41 */	li r5, 0x41
/* 804F6628  38 C0 00 41 */	li r6, 0x41
/* 804F662C  38 E0 00 00 */	li r7, 0
/* 804F6630  39 00 00 00 */	li r8, 0
/* 804F6634  4B FE 01 DD */	bl Player_actor_InitAnimation_Base2
/* 804F6638  7F E3 FB 78 */	mr r3, r31
/* 804F663C  7F 64 DB 78 */	mr r4, r27
/* 804F6640  4B FD F2 B9 */	bl Player_actor_setup_main_Base
/* 804F6644  39 61 00 20 */	addi r11, r1, 0x20
/* 804F6648  4B BA 48 D1 */	bl func_8009AF18
/* 804F664C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F6650  7C 08 03 A6 */	mtlr r0
/* 804F6654  38 21 00 20 */	addi r1, r1, 0x20
/* 804F6658  4E 80 00 20 */	blr 
