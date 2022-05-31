lbl_8052B17C:
/* 8052B17C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052B180  7C 08 02 A6 */	mflr r0
/* 8052B184  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052B188  39 61 00 20 */	addi r11, r1, 0x20
/* 8052B18C  4B B6 FD 49 */	bl func_8009AED4
/* 8052B190  7C 7D 1B 78 */	mr r29, r3
/* 8052B194  7C 9E 23 78 */	mr r30, r4
/* 8052B198  38 60 00 01 */	li r3, 1
/* 8052B19C  38 80 00 07 */	li r4, 7
/* 8052B1A0  4B E7 2C 2D */	bl mEv_get_save_area
/* 8052B1A4  7C 7F 1B 78 */	mr r31, r3
/* 8052B1A8  A0 03 00 00 */	lhz r0, 0(r3)
/* 8052B1AC  28 00 00 01 */	cmplwi r0, 1
/* 8052B1B0  41 82 00 14 */	beq lbl_8052B1C4
/* 8052B1B4  38 7F 00 06 */	addi r3, r31, 6
/* 8052B1B8  4B E7 FE 61 */	bl mFI_SetOyasiroPos
/* 8052B1BC  2C 03 00 00 */	cmpwi r3, 0
/* 8052B1C0  41 82 00 2C */	beq lbl_8052B1EC
lbl_8052B1C4:
/* 8052B1C4  38 00 00 01 */	li r0, 1
/* 8052B1C8  38 A0 00 00 */	li r5, 0
/* 8052B1CC  B0 1F 00 00 */	sth r0, 0(r31)
/* 8052B1D0  38 00 00 05 */	li r0, 5
/* 8052B1D4  7F A3 EB 78 */	mr r3, r29
/* 8052B1D8  7F C4 F3 78 */	mr r4, r30
/* 8052B1DC  98 BF 00 0C */	stb r5, 0xc(r31)
/* 8052B1E0  38 A0 00 04 */	li r5, 4
/* 8052B1E4  98 1D 09 A8 */	stb r0, 0x9a8(r29)
/* 8052B1E8  48 00 08 61 */	bl aHN0_setup_think_proc
lbl_8052B1EC:
/* 8052B1EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8052B1F0  4B B6 FD 31 */	bl func_8009AF20
/* 8052B1F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052B1F8  7C 08 03 A6 */	mtlr r0
/* 8052B1FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8052B200  4E 80 00 20 */	blr 
