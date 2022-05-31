lbl_804FC230:
/* 804FC230  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FC234  7C 08 02 A6 */	mflr r0
/* 804FC238  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FC23C  39 61 00 20 */	addi r11, r1, 0x20
/* 804FC240  4B B9 EC 95 */	bl func_8009AED4
/* 804FC244  7C 7D 1B 78 */	mr r29, r3
/* 804FC248  7C 9E 23 78 */	mr r30, r4
/* 804FC24C  4B FD B4 CD */	bl Player_actor_Check_ItemParent
/* 804FC250  2C 03 00 00 */	cmpwi r3, 0
/* 804FC254  40 82 00 50 */	bne lbl_804FC2A4
/* 804FC258  83 FD 0D 20 */	lwz r31, 0xd20(r29)
/* 804FC25C  7F A3 EB 78 */	mr r3, r29
/* 804FC260  4B FD 91 0D */	bl Player_actor_SettleRequestMainIndexPriority
/* 804FC264  2C 1F 00 41 */	cmpwi r31, 0x41
/* 804FC268  41 82 00 1C */	beq lbl_804FC284
/* 804FC26C  7F C3 F3 78 */	mr r3, r30
/* 804FC270  38 80 00 00 */	li r4, 0
/* 804FC274  38 A0 00 00 */	li r5, 0
/* 804FC278  38 C0 00 13 */	li r6, 0x13
/* 804FC27C  48 00 0A C5 */	bl func_804FCD40
/* 804FC280  48 00 00 24 */	b lbl_804FC2A4
lbl_804FC284:
/* 804FC284  3C 60 80 65 */	lis r3, lit_8374@ha /* 0x80648494@ha */
/* 804FC288  80 9D 0D 18 */	lwz r4, 0xd18(r29)
/* 804FC28C  C0 23 84 94 */	lfs f1, lit_8374@l(r3)  /* 0x80648494@l */
/* 804FC290  7F C3 F3 78 */	mr r3, r30
/* 804FC294  80 BD 0D 1C */	lwz r5, 0xd1c(r29)
/* 804FC298  38 C0 00 00 */	li r6, 0
/* 804FC29C  38 E0 00 13 */	li r7, 0x13
/* 804FC2A0  4B FF E5 FD */	bl func_804FA89C
lbl_804FC2A4:
/* 804FC2A4  39 61 00 20 */	addi r11, r1, 0x20
/* 804FC2A8  4B B9 EC 79 */	bl func_8009AF20
/* 804FC2AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FC2B0  7C 08 03 A6 */	mtlr r0
/* 804FC2B4  38 21 00 20 */	addi r1, r1, 0x20
/* 804FC2B8  4E 80 00 20 */	blr 
