lbl_803CC0F8:
/* 803CC0F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803CC0FC  7C 08 02 A6 */	mflr r0
/* 803CC100  90 01 00 34 */	stw r0, 0x34(r1)
/* 803CC104  39 61 00 30 */	addi r11, r1, 0x30
/* 803CC108  4B CC ED C5 */	bl func_8009AECC
/* 803CC10C  38 00 00 00 */	li r0, 0
/* 803CC110  7C 7B 1B 78 */	mr r27, r3
/* 803CC114  90 01 00 0C */	stw r0, 0xc(r1)
/* 803CC118  7C 9C 23 78 */	mr r28, r4
/* 803CC11C  7F 7F DB 78 */	mr r31, r27
/* 803CC120  3B C0 FF FF */	li r30, -1
/* 803CC124  98 01 00 08 */	stb r0, 8(r1)
/* 803CC128  3B A0 00 00 */	li r29, 0
/* 803CC12C  48 00 00 38 */	b lbl_803CC164
lbl_803CC130:
/* 803CC130  7F 63 DB 78 */	mr r3, r27
/* 803CC134  4B FF F7 3D */	bl mNpc_CheckFreeAnimalMemory
/* 803CC138  2C 03 00 00 */	cmpwi r3, 0
/* 803CC13C  40 82 00 20 */	bne lbl_803CC15C
/* 803CC140  7F 64 DB 78 */	mr r4, r27
/* 803CC144  38 61 00 0C */	addi r3, r1, 0xc
/* 803CC148  38 A1 00 08 */	addi r5, r1, 8
/* 803CC14C  4B FF FE E5 */	bl mNpc_SelectBestFriend
/* 803CC150  2C 03 00 01 */	cmpwi r3, 1
/* 803CC154  40 82 00 08 */	bne lbl_803CC15C
/* 803CC158  7F BE EB 78 */	mr r30, r29
lbl_803CC15C:
/* 803CC15C  3B 7B 01 38 */	addi r27, r27, 0x138
/* 803CC160  3B BD 00 01 */	addi r29, r29, 1
lbl_803CC164:
/* 803CC164  7C 1D E0 00 */	cmpw r29, r28
/* 803CC168  41 80 FF C8 */	blt lbl_803CC130
/* 803CC16C  2C 1E FF FF */	cmpwi r30, -1
/* 803CC170  41 82 00 20 */	beq lbl_803CC190
/* 803CC174  1C 1E 01 38 */	mulli r0, r30, 0x138
/* 803CC178  7F 7F 02 14 */	add r27, r31, r0
/* 803CC17C  88 1B 00 30 */	lbz r0, 0x30(r27)
/* 803CC180  7C 00 07 74 */	extsb r0, r0
/* 803CC184  2C 00 00 50 */	cmpwi r0, 0x50
/* 803CC188  40 80 00 08 */	bge lbl_803CC190
/* 803CC18C  3B C0 FF FF */	li r30, -1
lbl_803CC190:
/* 803CC190  7F C3 F3 78 */	mr r3, r30
/* 803CC194  39 61 00 30 */	addi r11, r1, 0x30
/* 803CC198  4B CC ED 81 */	bl func_8009AF18
/* 803CC19C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CC1A0  7C 08 03 A6 */	mtlr r0
/* 803CC1A4  38 21 00 30 */	addi r1, r1, 0x30
/* 803CC1A8  4E 80 00 20 */	blr 
