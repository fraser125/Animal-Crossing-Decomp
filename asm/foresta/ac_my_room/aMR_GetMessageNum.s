lbl_80476BBC:
/* 80476BBC  A8 C4 03 FA */	lha r6, 0x3fa(r4)
/* 80476BC0  7C 60 07 34 */	extsh r0, r3
/* 80476BC4  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80476BC8  2C 00 00 09 */	cmpwi r0, 9
/* 80476BCC  80 A4 DF E8 */	lwz r5, data_811CDFE8@l(r4)  /* 0x811CDFE8@l */
/* 80476BD0  1C 06 08 58 */	mulli r0, r6, 0x858
/* 80476BD4  40 82 00 34 */	bne lbl_80476C08
/* 80476BD8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80476BDC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80476BE0  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80476BE4  2C 04 00 06 */	cmpwi r4, 6
/* 80476BE8  41 82 00 0C */	beq lbl_80476BF4
/* 80476BEC  2C 04 00 30 */	cmpwi r4, 0x30
/* 80476BF0  40 82 00 18 */	bne lbl_80476C08
lbl_80476BF4:
/* 80476BF4  7C 05 02 2E */	lhzx r0, r5, r0
/* 80476BF8  7C 00 32 14 */	add r0, r0, r6
/* 80476BFC  54 03 07 3E */	clrlwi r3, r0, 0x1c
/* 80476C00  38 63 29 88 */	addi r3, r3, 0x2988
/* 80476C04  4E 80 00 20 */	blr 
lbl_80476C08:
/* 80476C08  7C 60 07 34 */	extsh r0, r3
/* 80476C0C  3C 60 80 69 */	lis r3, aMR_msg_no_table@ha /* 0x80689AC8@ha */
/* 80476C10  54 00 10 3A */	slwi r0, r0, 2
/* 80476C14  38 63 9A C8 */	addi r3, r3, aMR_msg_no_table@l /* 0x80689AC8@l */
/* 80476C18  7C 63 00 2E */	lwzx r3, r3, r0
/* 80476C1C  4E 80 00 20 */	blr 
