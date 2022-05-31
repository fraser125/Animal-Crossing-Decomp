lbl_8042E17C:
/* 8042E17C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042E180  7C 08 02 A6 */	mflr r0
/* 8042E184  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042E188  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042E18C  7C 7F 1B 78 */	mr r31, r3
/* 8042E190  80 63 01 9C */	lwz r3, 0x19c(r3)
/* 8042E194  28 03 00 00 */	cmplwi r3, 0
/* 8042E198  41 82 00 08 */	beq lbl_8042E1A0
/* 8042E19C  4B F8 E3 19 */	bl zelda_free
lbl_8042E1A0:
/* 8042E1A0  80 7F 01 A0 */	lwz r3, 0x1a0(r31)
/* 8042E1A4  28 03 00 00 */	cmplwi r3, 0
/* 8042E1A8  41 82 00 08 */	beq lbl_8042E1B0
/* 8042E1AC  4B F8 E3 09 */	bl zelda_free
lbl_8042E1B0:
/* 8042E1B0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8042E1B4  38 00 00 00 */	li r0, 0
/* 8042E1B8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8042E1BC  3C 63 00 02 */	addis r3, r3, 2
/* 8042E1C0  90 03 60 34 */	stw r0, 0x6034(r3)
/* 8042E1C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042E1C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042E1CC  7C 08 03 A6 */	mtlr r0
/* 8042E1D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8042E1D4  4E 80 00 20 */	blr 
