lbl_8063C588:
/* 8063C588  2C 05 00 03 */	cmpwi r5, 3
/* 8063C58C  41 82 00 0C */	beq lbl_8063C598
/* 8063C590  2C 05 00 04 */	cmpwi r5, 4
/* 8063C594  40 82 00 0C */	bne lbl_8063C5A0
lbl_8063C598:
/* 8063C598  38 00 00 00 */	li r0, 0
/* 8063C59C  90 06 00 00 */	stw r0, 0(r6)
lbl_8063C5A0:
/* 8063C5A0  38 60 00 01 */	li r3, 1
/* 8063C5A4  4E 80 00 20 */	blr 
