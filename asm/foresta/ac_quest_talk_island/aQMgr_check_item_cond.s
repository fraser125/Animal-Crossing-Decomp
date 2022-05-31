lbl_8048DD54:
/* 8048DD54  54 A0 08 3C */	slwi r0, r5, 1
/* 8048DD58  38 A0 00 00 */	li r5, 0
/* 8048DD5C  7C 60 04 30 */	srw r0, r3, r0
/* 8048DD60  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 8048DD64  7C 04 00 40 */	cmplw r4, r0
/* 8048DD68  40 82 00 08 */	bne lbl_8048DD70
/* 8048DD6C  38 A0 00 01 */	li r5, 1
lbl_8048DD70:
/* 8048DD70  7C A3 2B 78 */	mr r3, r5
/* 8048DD74  4E 80 00 20 */	blr 
