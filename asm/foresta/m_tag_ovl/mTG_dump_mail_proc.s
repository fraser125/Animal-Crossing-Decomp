lbl_805F4518:
/* 805F4518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F451C  7C 08 02 A6 */	mflr r0
/* 805F4520  38 80 00 00 */	li r4, 0
/* 805F4524  38 A0 00 00 */	li r5, 0
/* 805F4528  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F452C  38 00 00 18 */	li r0, 0x18
/* 805F4530  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805F4534  80 C6 09 88 */	lwz r6, 0x988(r6)
/* 805F4538  B0 06 03 F8 */	sth r0, 0x3f8(r6)
/* 805F453C  4B FF B2 79 */	bl mTG_return_tag_init
/* 805F4540  38 60 04 35 */	li r3, 0x435
/* 805F4544  48 03 97 C1 */	bl sAdo_SysTrgStart
/* 805F4548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F454C  7C 08 03 A6 */	mtlr r0
/* 805F4550  38 21 00 10 */	addi r1, r1, 0x10
/* 805F4554  4E 80 00 20 */	blr 