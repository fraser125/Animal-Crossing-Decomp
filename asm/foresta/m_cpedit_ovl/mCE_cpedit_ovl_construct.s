lbl_805CC278:
/* 805CC278  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CC27C  7C 08 02 A6 */	mflr r0
/* 805CC280  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CC284  39 61 00 20 */	addi r11, r1, 0x20
/* 805CC288  4B AC EC 4D */	bl func_8009AED4
/* 805CC28C  7C 7D 1B 78 */	mr r29, r3
/* 805CC290  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805CC294  80 1F 09 C8 */	lwz r0, 0x9c8(r31)
/* 805CC298  3B DF 05 AC */	addi r30, r31, 0x5ac
/* 805CC29C  28 00 00 00 */	cmplwi r0, 0
/* 805CC2A0  40 82 00 24 */	bne lbl_805CC2C4
/* 805CC2A4  3C 60 81 21 */	lis r3, cpedit_ovl_data@ha /* 0x81210348@ha */
/* 805CC2A8  38 80 00 01 */	li r4, 1
/* 805CC2AC  38 63 03 48 */	addi r3, r3, cpedit_ovl_data@l /* 0x81210348@l */
/* 805CC2B0  38 A0 00 00 */	li r5, 0
/* 805CC2B4  4B DE E7 95 */	bl mem_clear
/* 805CC2B8  3C 60 81 21 */	lis r3, cpedit_ovl_data@ha /* 0x81210348@ha */
/* 805CC2BC  38 03 03 48 */	addi r0, r3, cpedit_ovl_data@l /* 0x81210348@l */
/* 805CC2C0  90 1F 09 C8 */	stw r0, 0x9c8(r31)
lbl_805CC2C4:
/* 805CC2C4  7F A3 EB 78 */	mr r3, r29
/* 805CC2C8  7F C4 F3 78 */	mr r4, r30
/* 805CC2CC  4B FF FF 79 */	bl mCE_cpedit_ovl_init
/* 805CC2D0  7F A3 EB 78 */	mr r3, r29
/* 805CC2D4  4B FF FF 51 */	bl mCE_cpedit_ovl_set_proc
/* 805CC2D8  39 61 00 20 */	addi r11, r1, 0x20
/* 805CC2DC  4B AC EC 45 */	bl func_8009AF20
/* 805CC2E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CC2E4  7C 08 03 A6 */	mtlr r0
/* 805CC2E8  38 21 00 20 */	addi r1, r1, 0x20
/* 805CC2EC  4E 80 00 20 */	blr 
