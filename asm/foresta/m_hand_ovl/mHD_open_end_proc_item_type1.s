lbl_805DE2D0:
/* 805DE2D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DE2D4  7C 08 02 A6 */	mflr r0
/* 805DE2D8  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 805DE2DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DE2E0  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 805DE2E4  3C C6 00 02 */	addis r6, r6, 2
/* 805DE2E8  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805DE2EC  1C 04 01 2A */	mulli r0, r4, 0x12a
/* 805DE2F0  80 C6 61 3C */	lwz r6, 0x613c(r6)
/* 805DE2F4  80 A5 09 7C */	lwz r5, 0x97c(r5)
/* 805DE2F8  7C C6 02 14 */	add r6, r6, r0
/* 805DE2FC  38 85 00 08 */	addi r4, r5, 8
/* 805DE300  38 A6 05 0C */	addi r5, r6, 0x50c
/* 805DE304  38 C6 04 E0 */	addi r6, r6, 0x4e0
/* 805DE308  4B FF F4 61 */	bl mHD_drop_item
/* 805DE30C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DE310  7C 08 03 A6 */	mtlr r0
/* 805DE314  38 21 00 10 */	addi r1, r1, 0x10
/* 805DE318  4E 80 00 20 */	blr 
