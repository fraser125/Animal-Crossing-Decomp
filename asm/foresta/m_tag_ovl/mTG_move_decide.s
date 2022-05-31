lbl_805FC538:
/* 805FC538  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FC53C  7C 08 02 A6 */	mflr r0
/* 805FC540  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FC544  39 61 00 20 */	addi r11, r1, 0x20
/* 805FC548  4B A9 E9 89 */	bl func_8009AED0
/* 805FC54C  7C BE 2B 78 */	mr r30, r5
/* 805FC550  7C 9C 23 78 */	mr r28, r4
/* 805FC554  7C 7D 1B 78 */	mr r29, r3
/* 805FC558  7F C4 F3 78 */	mr r4, r30
/* 805FC55C  4B FF FC 5D */	bl mTG_check_move_proc
/* 805FC560  2C 03 00 00 */	cmpwi r3, 0
/* 805FC564  40 82 00 10 */	bne lbl_805FC574
/* 805FC568  38 60 10 0A */	li r3, 0x100a
/* 805FC56C  48 03 17 99 */	bl sAdo_SysTrgStart
/* 805FC570  48 00 01 58 */	b lbl_805FC6C8
lbl_805FC574:
/* 805FC574  7F A3 EB 78 */	mr r3, r29
/* 805FC578  4B FF 30 6D */	bl func_805EF5E4
/* 805FC57C  2C 03 00 01 */	cmpwi r3, 1
/* 805FC580  41 82 00 28 */	beq lbl_805FC5A8
/* 805FC584  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FC588  2C 00 00 0A */	cmpwi r0, 0xa
/* 805FC58C  41 82 00 1C */	beq lbl_805FC5A8
/* 805FC590  2C 00 00 15 */	cmpwi r0, 0x15
/* 805FC594  41 82 00 14 */	beq lbl_805FC5A8
/* 805FC598  2C 00 00 1A */	cmpwi r0, 0x1a
/* 805FC59C  41 82 00 0C */	beq lbl_805FC5A8
/* 805FC5A0  2C 00 00 18 */	cmpwi r0, 0x18
/* 805FC5A4  40 82 01 14 */	bne lbl_805FC6B8
lbl_805FC5A8:
/* 805FC5A8  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FC5AC  3C 60 80 6D */	lis r3, decide_proc@ha /* 0x806D0FA0@ha */
/* 805FC5B0  38 A3 0F A0 */	addi r5, r3, decide_proc@l /* 0x806D0FA0@l */
/* 805FC5B4  7F A3 EB 78 */	mr r3, r29
/* 805FC5B8  54 00 10 3A */	slwi r0, r0, 2
/* 805FC5BC  7F 84 E3 78 */	mr r4, r28
/* 805FC5C0  7D 85 00 2E */	lwzx r12, r5, r0
/* 805FC5C4  7F C5 F3 78 */	mr r5, r30
/* 805FC5C8  7D 89 03 A6 */	mtctr r12
/* 805FC5CC  4E 80 04 21 */	bctrl 
/* 805FC5D0  80 1C 00 00 */	lwz r0, 0(r28)
/* 805FC5D4  7C 7F 1B 78 */	mr r31, r3
/* 805FC5D8  2C 00 00 01 */	cmpwi r0, 1
/* 805FC5DC  40 82 00 9C */	bne lbl_805FC678
/* 805FC5E0  2C 1F 00 00 */	cmpwi r31, 0
/* 805FC5E4  41 82 00 94 */	beq lbl_805FC678
/* 805FC5E8  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FC5EC  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 805FC5F0  2C 00 00 01 */	cmpwi r0, 1
/* 805FC5F4  83 83 09 88 */	lwz r28, 0x988(r3)
/* 805FC5F8  41 82 00 44 */	beq lbl_805FC63C
/* 805FC5FC  40 80 00 70 */	bge lbl_805FC66C
/* 805FC600  2C 00 00 00 */	cmpwi r0, 0
/* 805FC604  40 80 00 08 */	bge lbl_805FC60C
/* 805FC608  48 00 00 64 */	b lbl_805FC66C
lbl_805FC60C:
/* 805FC60C  7F C3 F3 78 */	mr r3, r30
/* 805FC610  4B FF 35 51 */	bl mTG_get_table_idx
/* 805FC614  38 80 00 01 */	li r4, 1
/* 805FC618  A0 1C 05 E0 */	lhz r0, 0x5e0(r28)
/* 805FC61C  7C 83 18 30 */	slw r3, r4, r3
/* 805FC620  7C 00 18 39 */	and. r0, r0, r3
/* 805FC624  40 82 00 0C */	bne lbl_805FC630
/* 805FC628  38 00 00 00 */	li r0, 0
/* 805FC62C  B0 1C 05 E0 */	sth r0, 0x5e0(r28)
lbl_805FC630:
/* 805FC630  38 00 00 00 */	li r0, 0
/* 805FC634  B0 1C 05 E2 */	sth r0, 0x5e2(r28)
/* 805FC638  48 00 00 40 */	b lbl_805FC678
lbl_805FC63C:
/* 805FC63C  7F C3 F3 78 */	mr r3, r30
/* 805FC640  4B FF 35 21 */	bl mTG_get_table_idx
/* 805FC644  38 80 00 01 */	li r4, 1
/* 805FC648  A0 1C 05 E2 */	lhz r0, 0x5e2(r28)
/* 805FC64C  7C 83 18 30 */	slw r3, r4, r3
/* 805FC650  7C 00 18 39 */	and. r0, r0, r3
/* 805FC654  40 82 00 0C */	bne lbl_805FC660
/* 805FC658  38 00 00 00 */	li r0, 0
/* 805FC65C  B0 1C 05 E2 */	sth r0, 0x5e2(r28)
lbl_805FC660:
/* 805FC660  38 00 00 00 */	li r0, 0
/* 805FC664  B0 1C 05 E0 */	sth r0, 0x5e0(r28)
/* 805FC668  48 00 00 10 */	b lbl_805FC678
lbl_805FC66C:
/* 805FC66C  38 00 00 00 */	li r0, 0
/* 805FC670  B0 1C 05 E0 */	sth r0, 0x5e0(r28)
/* 805FC674  B0 1C 05 E2 */	sth r0, 0x5e2(r28)
lbl_805FC678:
/* 805FC678  2C 1F 00 00 */	cmpwi r31, 0
/* 805FC67C  41 82 00 4C */	beq lbl_805FC6C8
/* 805FC680  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805FC684  38 00 00 00 */	li r0, 0
/* 805FC688  7F A3 EB 78 */	mr r3, r29
/* 805FC68C  7F E5 FB 78 */	mr r5, r31
/* 805FC690  80 84 09 7C */	lwz r4, 0x97c(r4)
/* 805FC694  38 C0 00 00 */	li r6, 0
/* 805FC698  B0 04 02 F0 */	sth r0, 0x2f0(r4)
/* 805FC69C  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 805FC6A0  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 805FC6A4  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 805FC6A8  4B FF 5A C5 */	bl mTG_chg_tag_func
/* 805FC6AC  38 60 00 32 */	li r3, 0x32
/* 805FC6B0  48 03 16 55 */	bl sAdo_SysTrgStart
/* 805FC6B4  48 00 00 14 */	b lbl_805FC6C8
lbl_805FC6B8:
/* 805FC6B8  7F A3 EB 78 */	mr r3, r29
/* 805FC6BC  7F 84 E3 78 */	mr r4, r28
/* 805FC6C0  7F C5 F3 78 */	mr r5, r30
/* 805FC6C4  4B FF F4 41 */	bl mTG_drop_item
lbl_805FC6C8:
/* 805FC6C8  39 61 00 20 */	addi r11, r1, 0x20
/* 805FC6CC  4B A9 E8 51 */	bl func_8009AF1C
/* 805FC6D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805FC6D4  7C 08 03 A6 */	mtlr r0
/* 805FC6D8  38 21 00 20 */	addi r1, r1, 0x20
/* 805FC6DC  4E 80 00 20 */	blr 
