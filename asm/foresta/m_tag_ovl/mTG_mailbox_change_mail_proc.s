lbl_805F4244:
/* 805F4244  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F4248  7C 08 02 A6 */	mflr r0
/* 805F424C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F4250  39 61 00 20 */	addi r11, r1, 0x20
/* 805F4254  4B AA 6C 81 */	bl func_8009AED4
/* 805F4258  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F425C  7C 7D 1B 78 */	mr r29, r3
/* 805F4260  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805F4264  80 BD 00 2C */	lwz r5, 0x2c(r29)
/* 805F4268  3C 63 00 02 */	addis r3, r3, 2
/* 805F426C  38 80 00 0A */	li r4, 0xa
/* 805F4270  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805F4274  83 E5 09 98 */	lwz r31, 0x998(r5)
/* 805F4278  83 C5 09 88 */	lwz r30, 0x988(r5)
/* 805F427C  38 63 04 E0 */	addi r3, r3, 0x4e0
/* 805F4280  4B DC 86 25 */	bl mMl_chk_mail_free_space
/* 805F4284  38 00 00 00 */	li r0, 0
/* 805F4288  2C 03 FF FF */	cmpwi r3, -1
/* 805F428C  B0 1E 05 E2 */	sth r0, 0x5e2(r30)
/* 805F4290  41 82 00 18 */	beq lbl_805F42A8
/* 805F4294  38 00 00 02 */	li r0, 2
/* 805F4298  38 60 00 02 */	li r3, 2
/* 805F429C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805F42A0  48 03 9A 65 */	bl sAdo_SysTrgStart
/* 805F42A4  48 00 00 10 */	b lbl_805F42B4
lbl_805F42A8:
/* 805F42A8  B0 1F 00 08 */	sth r0, 8(r31)
/* 805F42AC  38 60 10 0A */	li r3, 0x100a
/* 805F42B0  48 03 9A 55 */	bl sAdo_SysTrgStart
lbl_805F42B4:
/* 805F42B4  7F A3 EB 78 */	mr r3, r29
/* 805F42B8  38 80 00 00 */	li r4, 0
/* 805F42BC  38 A0 00 00 */	li r5, 0
/* 805F42C0  4B FF B4 F5 */	bl mTG_return_tag_init
/* 805F42C4  39 61 00 20 */	addi r11, r1, 0x20
/* 805F42C8  4B AA 6C 59 */	bl func_8009AF20
/* 805F42CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F42D0  7C 08 03 A6 */	mtlr r0
/* 805F42D4  38 21 00 20 */	addi r1, r1, 0x20
/* 805F42D8  4E 80 00 20 */	blr 
