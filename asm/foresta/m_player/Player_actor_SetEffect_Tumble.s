lbl_804E7E80:
/* 804E7E80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E7E84  7C 08 02 A6 */	mflr r0
/* 804E7E88  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E7E8C  39 61 00 30 */	addi r11, r1, 0x30
/* 804E7E90  4B BB 30 45 */	bl func_8009AED4
/* 804E7E94  3C A0 80 64 */	lis r5, lit_1375@ha /* 0x80646A30@ha */
/* 804E7E98  7C 7F 1B 78 */	mr r31, r3
/* 804E7E9C  3B DF 01 74 */	addi r30, r31, 0x174
/* 804E7EA0  C0 25 6A 30 */	lfs f1, lit_1375@l(r5)  /* 0x80646A30@l */
/* 804E7EA4  7C 9D 23 78 */	mr r29, r4
/* 804E7EA8  7F C3 F3 78 */	mr r3, r30
/* 804E7EAC  4B FE F7 55 */	bl Player_actor_Check_AnimationFrame
/* 804E7EB0  2C 03 00 00 */	cmpwi r3, 0
/* 804E7EB4  41 82 00 0C */	beq lbl_804E7EC0
/* 804E7EB8  4B FE D0 B1 */	bl Player_actor_set_viblation_Tumble
/* 804E7EBC  48 00 00 A8 */	b lbl_804E7F64
lbl_804E7EC0:
/* 804E7EC0  3C 80 80 64 */	lis r4, lit_3046@ha /* 0x80646E54@ha */
/* 804E7EC4  7F C3 F3 78 */	mr r3, r30
/* 804E7EC8  C0 24 6E 54 */	lfs f1, lit_3046@l(r4)  /* 0x80646E54@l */
/* 804E7ECC  4B FE F7 35 */	bl Player_actor_Check_AnimationFrame
/* 804E7ED0  2C 03 00 00 */	cmpwi r3, 0
/* 804E7ED4  41 82 00 18 */	beq lbl_804E7EEC
/* 804E7ED8  7F E3 FB 78 */	mr r3, r31
/* 804E7EDC  7F A4 EB 78 */	mr r4, r29
/* 804E7EE0  38 A0 00 01 */	li r5, 1
/* 804E7EE4  4B FF FD 19 */	bl Player_actor_effect_Tumble
/* 804E7EE8  48 00 00 7C */	b lbl_804E7F64
lbl_804E7EEC:
/* 804E7EEC  3C 80 80 65 */	lis r4, lit_8209@ha /* 0x80648438@ha */
/* 804E7EF0  7F C3 F3 78 */	mr r3, r30
/* 804E7EF4  C0 24 84 38 */	lfs f1, lit_8209@l(r4)  /* 0x80648438@l */
/* 804E7EF8  4B FE F7 09 */	bl Player_actor_Check_AnimationFrame
/* 804E7EFC  2C 03 00 00 */	cmpwi r3, 0
/* 804E7F00  41 82 00 64 */	beq lbl_804E7F64
/* 804E7F04  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 804E7F08  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E7F0C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804E7F10  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E7F14  3C 63 00 02 */	addis r3, r3, 2
/* 804E7F18  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804E7F1C  90 81 00 08 */	stw r4, 8(r1)
/* 804E7F20  7F A7 EB 78 */	mr r7, r29
/* 804E7F24  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 804E7F28  38 81 00 08 */	addi r4, r1, 8
/* 804E7F2C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E7F30  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804E7F34  38 60 00 36 */	li r3, 0x36
/* 804E7F38  38 A0 00 02 */	li r5, 2
/* 804E7F3C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804E7F40  39 40 00 00 */	li r10, 0
/* 804E7F44  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E7F48  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 804E7F4C  81 86 00 00 */	lwz r12, 0(r6)
/* 804E7F50  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804E7F54  A8 DF 00 36 */	lha r6, 0x36(r31)
/* 804E7F58  7C 09 07 34 */	extsh r9, r0
/* 804E7F5C  7D 89 03 A6 */	mtctr r12
/* 804E7F60  4E 80 04 21 */	bctrl 
lbl_804E7F64:
/* 804E7F64  39 61 00 30 */	addi r11, r1, 0x30
/* 804E7F68  4B BB 2F B9 */	bl func_8009AF20
/* 804E7F6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E7F70  7C 08 03 A6 */	mtlr r0
/* 804E7F74  38 21 00 30 */	addi r1, r1, 0x30
/* 804E7F78  4E 80 00 20 */	blr 
