lbl_805E5FEC:
/* 805E5FEC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 805E5FF0  7C 08 02 A6 */	mflr r0
/* 805E5FF4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 805E5FF8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 805E5FFC  4B AB 4E D1 */	bl func_8009AECC
/* 805E6000  7C 7B 1B 78 */	mr r27, r3
/* 805E6004  38 61 00 08 */	addi r3, r1, 8
/* 805E6008  38 80 00 1E */	li r4, 0x1e
/* 805E600C  4B FF FE CD */	bl mMP_make_max_no_table
/* 805E6010  3C 60 80 6D */	lis r3, l_map_pal@ha /* 0x806CDA70@ha */
/* 805E6014  3B A1 00 08 */	addi r29, r1, 8
/* 805E6018  3B C3 DA 70 */	addi r30, r3, l_map_pal@l /* 0x806CDA70@l */
/* 805E601C  3B 80 00 00 */	li r28, 0
/* 805E6020  3B E0 00 00 */	li r31, 0
lbl_805E6024:
/* 805E6024  7C 9D F8 2E */	lwzx r4, r29, r31
/* 805E6028  38 7F 00 20 */	addi r3, r31, 0x20
/* 805E602C  38 1C 00 98 */	addi r0, r28, 0x98
/* 805E6030  7C 9E 20 AE */	lbzx r4, r30, r4
/* 805E6034  7C 7B 1A 14 */	add r3, r27, r3
/* 805E6038  7C 9B 01 AE */	stbx r4, r27, r0
/* 805E603C  7C 9D F8 2E */	lwzx r4, r29, r31
/* 805E6040  4B FF FF 95 */	bl mMP_dma_texture
/* 805E6044  3B 9C 00 01 */	addi r28, r28, 1
/* 805E6048  3B FF 00 04 */	addi r31, r31, 4
/* 805E604C  2C 1C 00 1E */	cmpwi r28, 0x1e
/* 805E6050  41 80 FF D4 */	blt lbl_805E6024
/* 805E6054  39 61 00 A0 */	addi r11, r1, 0xa0
/* 805E6058  4B AB 4E C1 */	bl func_8009AF18
/* 805E605C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 805E6060  7C 08 03 A6 */	mtlr r0
/* 805E6064  38 21 00 A0 */	addi r1, r1, 0xa0
/* 805E6068  4E 80 00 20 */	blr 
