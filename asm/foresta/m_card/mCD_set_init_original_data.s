lbl_803FA108:
/* 803FA108  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FA10C  7C 08 02 A6 */	mflr r0
/* 803FA110  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FA114  39 61 00 30 */	addi r11, r1, 0x30
/* 803FA118  4B CA 0D AD */	bl func_8009AEC4
/* 803FA11C  7C 79 1B 78 */	mr r25, r3
/* 803FA120  3B 60 00 00 */	li r27, 0
/* 803FA124  3B E0 00 00 */	li r31, 0
/* 803FA128  3B C0 00 00 */	li r30, 0
lbl_803FA12C:
/* 803FA12C  38 7E 00 04 */	addi r3, r30, 4
/* 803FA130  38 80 00 0C */	li r4, 0xc
/* 803FA134  7C 79 1A 14 */	add r3, r25, r3
/* 803FA138  38 A0 00 20 */	li r5, 0x20
/* 803FA13C  4B FC 09 0D */	bl mem_clear
/* 803FA140  7F 99 FA 14 */	add r28, r25, r31
/* 803FA144  3B 40 00 00 */	li r26, 0
/* 803FA148  3B A0 00 00 */	li r29, 0
lbl_803FA14C:
/* 803FA14C  38 7D 00 80 */	addi r3, r29, 0x80
/* 803FA150  7C 7C 1A 14 */	add r3, r28, r3
/* 803FA154  4B FC FC 5D */	bl mNW_InitOriginalData
/* 803FA158  3B 5A 00 01 */	addi r26, r26, 1
/* 803FA15C  3B BD 02 20 */	addi r29, r29, 0x220
/* 803FA160  2C 1A 00 0C */	cmpwi r26, 0xc
/* 803FA164  41 80 FF E8 */	blt lbl_803FA14C
/* 803FA168  3B 7B 00 01 */	addi r27, r27, 1
/* 803FA16C  3B DE 00 0C */	addi r30, r30, 0xc
/* 803FA170  2C 1B 00 08 */	cmpwi r27, 8
/* 803FA174  3B FF 19 80 */	addi r31, r31, 0x1980
/* 803FA178  41 80 FF B4 */	blt lbl_803FA12C
/* 803FA17C  39 61 00 30 */	addi r11, r1, 0x30
/* 803FA180  4B CA 0D 91 */	bl func_8009AF10
/* 803FA184  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803FA188  7C 08 03 A6 */	mtlr r0
/* 803FA18C  38 21 00 30 */	addi r1, r1, 0x30
/* 803FA190  4E 80 00 20 */	blr 
