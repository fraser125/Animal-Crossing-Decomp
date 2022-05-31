lbl_8039AA18:
/* 8039AA18  54 60 1F 7E */	srwi r0, r3, 0x1d
/* 8039AA1C  38 C0 00 00 */	li r6, 0
/* 8039AA20  28 00 00 07 */	cmplwi r0, 7
/* 8039AA24  40 80 00 30 */	bge lbl_8039AA54
/* 8039AA28  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8039AA2C  54 05 10 3A */	slwi r5, r0, 2
/* 8039AA30  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8039AA34  54 60 00 FE */	clrlwi r0, r3, 3
/* 8039AA38  7C 64 2A 14 */	add r3, r4, r5
/* 8039AA3C  3C 63 00 03 */	addis r3, r3, 3
/* 8039AA40  80 63 DB B8 */	lwz r3, -0x2448(r3)
/* 8039AA44  7C 60 04 30 */	srw r0, r3, r0
/* 8039AA48  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8039AA4C  41 82 00 08 */	beq lbl_8039AA54
/* 8039AA50  38 C0 00 01 */	li r6, 1
lbl_8039AA54:
/* 8039AA54  7C C3 33 78 */	mr r3, r6
/* 8039AA58  4E 80 00 20 */	blr 
