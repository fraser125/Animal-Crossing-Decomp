lbl_80568028:
/* 80568028  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8056802C  7C 08 02 A6 */	mflr r0
/* 80568030  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80568034  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80568038  4B B3 2E 89 */	bl func_8009AEC0
/* 8056803C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80568040  3B A1 00 44 */	addi r29, r1, 0x44
/* 80568044  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80568048  3B C1 00 08 */	addi r30, r1, 8
/* 8056804C  3C 64 00 02 */	addis r3, r4, 2
/* 80568050  3B 20 00 00 */	li r25, 0
/* 80568054  3F 84 00 01 */	addis r28, r4, 1
/* 80568058  83 63 61 3C */	lwz r27, 0x613c(r3)
/* 8056805C  3B 9C 74 38 */	addi r28, r28, 0x7438
/* 80568060  3B E0 00 00 */	li r31, 0
/* 80568064  7F 9A E3 78 */	mr r26, r28
/* 80568068  3B 00 00 00 */	li r24, 0
lbl_8056806C:
/* 8056806C  7F 63 DB 78 */	mr r3, r27
/* 80568070  7F 44 D3 78 */	mr r4, r26
/* 80568074  4B E6 63 F5 */	bl mNpc_CheckFriendship
/* 80568078  2C 03 FF FF */	cmpwi r3, -1
/* 8056807C  41 82 00 24 */	beq lbl_805680A0
/* 80568080  1C 63 01 38 */	mulli r3, r3, 0x138
/* 80568084  7F 1E F9 2E */	stwx r24, r30, r31
/* 80568088  3B 39 00 01 */	addi r25, r25, 1
/* 8056808C  38 03 00 40 */	addi r0, r3, 0x40
/* 80568090  7C 1A 00 AE */	lbzx r0, r26, r0
/* 80568094  7C 00 07 74 */	extsb r0, r0
/* 80568098  7C 1D F9 2E */	stwx r0, r29, r31
/* 8056809C  3B FF 00 04 */	addi r31, r31, 4
lbl_805680A0:
/* 805680A0  3B 18 00 01 */	addi r24, r24, 1
/* 805680A4  3B 5A 09 88 */	addi r26, r26, 0x988
/* 805680A8  2C 18 00 0F */	cmpwi r24, 0xf
/* 805680AC  41 80 FF C0 */	blt lbl_8056806C
/* 805680B0  2C 19 00 00 */	cmpwi r25, 0
/* 805680B4  40 81 00 64 */	ble lbl_80568118
/* 805680B8  38 A1 00 44 */	addi r5, r1, 0x44
/* 805680BC  38 81 00 08 */	addi r4, r1, 8
/* 805680C0  38 C0 FF FF */	li r6, -1
/* 805680C4  38 E0 FF FF */	li r7, -1
/* 805680C8  38 60 00 00 */	li r3, 0
/* 805680CC  7F 29 03 A6 */	mtctr r25
/* 805680D0  40 81 00 20 */	ble lbl_805680F0
lbl_805680D4:
/* 805680D4  7C 05 18 2E */	lwzx r0, r5, r3
/* 805680D8  7C 06 00 00 */	cmpw r6, r0
/* 805680DC  40 80 00 0C */	bge lbl_805680E8
/* 805680E0  7C 06 03 78 */	mr r6, r0
/* 805680E4  7C E4 18 2E */	lwzx r7, r4, r3
lbl_805680E8:
/* 805680E8  38 63 00 04 */	addi r3, r3, 4
/* 805680EC  42 00 FF E8 */	bdnz lbl_805680D4
lbl_805680F0:
/* 805680F0  2C 07 FF FF */	cmpwi r7, -1
/* 805680F4  40 82 00 08 */	bne lbl_805680FC
/* 805680F8  38 E0 00 00 */	li r7, 0
lbl_805680FC:
/* 805680FC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80568100  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80568104  1C 07 09 88 */	mulli r0, r7, 0x988
/* 80568108  3C 63 00 01 */	addis r3, r3, 1
/* 8056810C  7C 63 02 14 */	add r3, r3, r0
/* 80568110  A0 63 74 38 */	lhz r3, 0x7438(r3)
/* 80568114  48 00 00 08 */	b lbl_8056811C
lbl_80568118:
/* 80568118  A0 7C 00 00 */	lhz r3, 0(r28)
lbl_8056811C:
/* 8056811C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80568120  4B B3 2D ED */	bl func_8009AF0C
/* 80568124  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80568128  7C 08 03 A6 */	mtlr r0
/* 8056812C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80568130  4E 80 00 20 */	blr 
