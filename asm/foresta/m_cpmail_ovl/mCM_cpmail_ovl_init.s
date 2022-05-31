lbl_805CCF74:
/* 805CCF74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CCF78  7C 08 02 A6 */	mflr r0
/* 805CCF7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CCF80  39 61 00 20 */	addi r11, r1, 0x20
/* 805CCF84  4B AC DF 45 */	bl func_8009AEC8
/* 805CCF88  7C 7E 1B 78 */	mr r30, r3
/* 805CCF8C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805CCF90  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805CCF94  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805CCF98  3C 63 00 02 */	addis r3, r3, 2
/* 805CCF9C  7C 9F 23 78 */	mr r31, r4
/* 805CCFA0  83 65 09 C0 */	lwz r27, 0x9c0(r5)
/* 805CCFA4  3B 40 00 00 */	li r26, 0
/* 805CCFA8  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805CCFAC  3B 9B 00 04 */	addi r28, r27, 4
/* 805CCFB0  3B A3 04 E0 */	addi r29, r3, 0x4e0
lbl_805CCFB4:
/* 805CCFB4  7F 83 E3 78 */	mr r3, r28
/* 805CCFB8  7F A4 EB 78 */	mr r4, r29
/* 805CCFBC  4B DE F9 B9 */	bl mMl_copy_mail
/* 805CCFC0  3B 5A 00 01 */	addi r26, r26, 1
/* 805CCFC4  3B BD 01 2A */	addi r29, r29, 0x12a
/* 805CCFC8  2C 1A 00 0A */	cmpwi r26, 0xa
/* 805CCFCC  3B 9C 01 2A */	addi r28, r28, 0x12a
/* 805CCFD0  41 80 FF E4 */	blt lbl_805CCFB4
/* 805CCFD4  38 00 00 08 */	li r0, 8
/* 805CCFD8  38 9B 0B A8 */	addi r4, r27, 0xba8
/* 805CCFDC  38 60 00 00 */	li r3, 0
/* 805CCFE0  7C 09 03 A6 */	mtctr r0
lbl_805CCFE4:
/* 805CCFE4  98 64 00 00 */	stb r3, 0(r4)
/* 805CCFE8  38 63 00 01 */	addi r3, r3, 1
/* 805CCFEC  38 84 00 01 */	addi r4, r4, 1
/* 805CCFF0  42 00 FF F4 */	bdnz lbl_805CCFE4
/* 805CCFF4  80 7B 00 00 */	lwz r3, 0(r27)
/* 805CCFF8  3B 80 00 00 */	li r28, 0
/* 805CCFFC  3B A3 00 64 */	addi r29, r3, 0x64
lbl_805CD000:
/* 805CD000  7F A3 EB 78 */	mr r3, r29
/* 805CD004  4B DE F6 FD */	bl mMl_clear_mail
/* 805CD008  3B 9C 00 01 */	addi r28, r28, 1
/* 805CD00C  3B BD 01 2A */	addi r29, r29, 0x12a
/* 805CD010  2C 1C 00 A0 */	cmpwi r28, 0xa0
/* 805CD014  41 80 FF EC */	blt lbl_805CD000
/* 805CD018  80 7B 00 00 */	lwz r3, 0(r27)
/* 805CD01C  3B A0 00 00 */	li r29, 0
/* 805CD020  3B 83 00 04 */	addi r28, r3, 4
lbl_805CD024:
/* 805CD024  7F 83 E3 78 */	mr r3, r28
/* 805CD028  38 80 00 0C */	li r4, 0xc
/* 805CD02C  38 A0 00 20 */	li r5, 0x20
/* 805CD030  4B DE DA 19 */	bl mem_clear
/* 805CD034  3B BD 00 01 */	addi r29, r29, 1
/* 805CD038  3B 9C 00 0C */	addi r28, r28, 0xc
/* 805CD03C  2C 1D 00 08 */	cmpwi r29, 8
/* 805CD040  41 80 FF E4 */	blt lbl_805CD024
/* 805CD044  38 00 00 00 */	li r0, 0
/* 805CD048  7F C3 F3 78 */	mr r3, r30
/* 805CD04C  98 1B 0B B3 */	stb r0, 0xbb3(r27)
/* 805CD050  7F E4 FB 78 */	mr r4, r31
/* 805CD054  4B FF FE E9 */	bl mCM_cpmail_load_memory
/* 805CD058  80 BE 01 74 */	lwz r5, 0x174(r30)
/* 805CD05C  38 00 00 01 */	li r0, 1
/* 805CD060  7F E3 FB 78 */	mr r3, r31
/* 805CD064  38 80 00 01 */	li r4, 1
/* 805CD068  98 05 00 02 */	stb r0, 2(r5)
/* 805CD06C  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805CD070  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805CD074  7D 89 03 A6 */	mtctr r12
/* 805CD078  4E 80 04 21 */	bctrl 
/* 805CD07C  39 61 00 20 */	addi r11, r1, 0x20
/* 805CD080  4B AC DE 95 */	bl func_8009AF14
/* 805CD084  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CD088  7C 08 03 A6 */	mtlr r0
/* 805CD08C  38 21 00 20 */	addi r1, r1, 0x20
/* 805CD090  4E 80 00 20 */	blr 
