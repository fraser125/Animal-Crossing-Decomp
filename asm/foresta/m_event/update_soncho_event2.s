lbl_8039C554:
/* 8039C554  A8 03 00 0A */	lha r0, 0xa(r3)
/* 8039C558  2C 00 00 50 */	cmpwi r0, 0x50
/* 8039C55C  40 80 00 18 */	bge lbl_8039C574
/* 8039C560  2C 00 00 06 */	cmpwi r0, 6
/* 8039C564  40 80 00 38 */	bge lbl_8039C59C
/* 8039C568  2C 00 00 04 */	cmpwi r0, 4
/* 8039C56C  40 80 00 10 */	bge lbl_8039C57C
/* 8039C570  48 00 00 2C */	b lbl_8039C59C
lbl_8039C574:
/* 8039C574  2C 00 00 6C */	cmpwi r0, 0x6c
/* 8039C578  40 80 00 24 */	bge lbl_8039C59C
lbl_8039C57C:
/* 8039C57C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8039C580  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8039C584  3C 84 00 02 */	addis r4, r4, 2
/* 8039C588  88 04 05 57 */	lbz r0, 0x557(r4)
/* 8039C58C  28 00 00 71 */	cmplwi r0, 0x71
/* 8039C590  40 82 00 0C */	bne lbl_8039C59C
/* 8039C594  38 00 00 00 */	li r0, 0
/* 8039C598  98 04 05 57 */	stb r0, 0x557(r4)
lbl_8039C59C:
/* 8039C59C  A8 03 00 0A */	lha r0, 0xa(r3)
/* 8039C5A0  2C 00 00 65 */	cmpwi r0, 0x65
/* 8039C5A4  41 82 00 10 */	beq lbl_8039C5B4
/* 8039C5A8  4C 80 00 20 */	bgelr 
/* 8039C5AC  2C 00 00 59 */	cmpwi r0, 0x59
/* 8039C5B0  4C 82 00 20 */	bnelr 
lbl_8039C5B4:
/* 8039C5B4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039C5B8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039C5BC  3C 63 00 02 */	addis r3, r3, 2
/* 8039C5C0  98 03 06 86 */	stb r0, 0x686(r3)
/* 8039C5C4  4E 80 00 20 */	blr 
