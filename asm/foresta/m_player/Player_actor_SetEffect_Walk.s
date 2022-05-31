lbl_804E64C0:
/* 804E64C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804E64C4  7C 08 02 A6 */	mflr r0
/* 804E64C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 804E64CC  39 61 00 38 */	addi r11, r1, 0x38
/* 804E64D0  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 804E64D4  4B BB 4A 01 */	bl func_8009AED4
/* 804E64D8  7C 7F 1B 78 */	mr r31, r3
/* 804E64DC  FF E0 10 90 */	fmr f31, f2
/* 804E64E0  3B DF 01 74 */	addi r30, r31, 0x174
/* 804E64E4  7C 9D 23 78 */	mr r29, r4
/* 804E64E8  7F C3 F3 78 */	mr r3, r30
/* 804E64EC  4B FF 11 15 */	bl Player_actor_Check_AnimationFrame
/* 804E64F0  2C 03 00 00 */	cmpwi r3, 0
/* 804E64F4  41 82 00 68 */	beq lbl_804E655C
/* 804E64F8  80 9F 10 F4 */	lwz r4, 0x10f4(r31)
/* 804E64FC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E6500  80 1F 10 F8 */	lwz r0, 0x10f8(r31)
/* 804E6504  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E6508  3C 63 00 02 */	addis r3, r3, 2
/* 804E650C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804E6510  90 81 00 14 */	stw r4, 0x14(r1)
/* 804E6514  7F A7 EB 78 */	mr r7, r29
/* 804E6518  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 804E651C  38 81 00 14 */	addi r4, r1, 0x14
/* 804E6520  90 01 00 18 */	stw r0, 0x18(r1)
/* 804E6524  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804E6528  38 60 00 44 */	li r3, 0x44
/* 804E652C  38 A0 00 02 */	li r5, 2
/* 804E6530  80 1F 10 FC */	lwz r0, 0x10fc(r31)
/* 804E6534  39 40 00 00 */	li r10, 0
/* 804E6538  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804E653C  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 804E6540  81 86 00 00 */	lwz r12, 0(r6)
/* 804E6544  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804E6548  A8 DF 11 08 */	lha r6, 0x1108(r31)
/* 804E654C  7C 09 07 34 */	extsh r9, r0
/* 804E6550  7D 89 03 A6 */	mtctr r12
/* 804E6554  4E 80 04 21 */	bctrl 
/* 804E6558  48 00 00 78 */	b lbl_804E65D0
lbl_804E655C:
/* 804E655C  FC 20 F8 90 */	fmr f1, f31
/* 804E6560  7F C3 F3 78 */	mr r3, r30
/* 804E6564  4B FF 10 9D */	bl Player_actor_Check_AnimationFrame
/* 804E6568  2C 03 00 00 */	cmpwi r3, 0
/* 804E656C  41 82 00 64 */	beq lbl_804E65D0
/* 804E6570  80 9F 10 E8 */	lwz r4, 0x10e8(r31)
/* 804E6574  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E6578  80 1F 10 EC */	lwz r0, 0x10ec(r31)
/* 804E657C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E6580  3C 63 00 02 */	addis r3, r3, 2
/* 804E6584  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804E6588  90 81 00 08 */	stw r4, 8(r1)
/* 804E658C  7F A7 EB 78 */	mr r7, r29
/* 804E6590  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 804E6594  38 81 00 08 */	addi r4, r1, 8
/* 804E6598  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E659C  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804E65A0  38 60 00 44 */	li r3, 0x44
/* 804E65A4  38 A0 00 02 */	li r5, 2
/* 804E65A8  80 1F 10 F0 */	lwz r0, 0x10f0(r31)
/* 804E65AC  39 40 00 00 */	li r10, 0
/* 804E65B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E65B4  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 804E65B8  81 86 00 00 */	lwz r12, 0(r6)
/* 804E65BC  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804E65C0  A8 DF 11 02 */	lha r6, 0x1102(r31)
/* 804E65C4  7C 09 07 34 */	extsh r9, r0
/* 804E65C8  7D 89 03 A6 */	mtctr r12
/* 804E65CC  4E 80 04 21 */	bctrl 
lbl_804E65D0:
/* 804E65D0  39 61 00 38 */	addi r11, r1, 0x38
/* 804E65D4  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 804E65D8  4B BB 49 49 */	bl func_8009AF20
/* 804E65DC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804E65E0  7C 08 03 A6 */	mtlr r0
/* 804E65E4  38 21 00 40 */	addi r1, r1, 0x40
/* 804E65E8  4E 80 00 20 */	blr 
