lbl_805DFF0C:
/* 805DFF0C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DFF10  80 A3 09 7C */	lwz r5, 0x97c(r3)
/* 805DFF14  80 E3 09 9C */	lwz r7, 0x99c(r3)
/* 805DFF18  80 05 00 00 */	lwz r0, 0(r5)
/* 805DFF1C  81 07 00 10 */	lwz r8, 0x10(r7)
/* 805DFF20  1C 80 00 B4 */	mulli r4, r0, 0xb4
/* 805DFF24  80 67 00 04 */	lwz r3, 4(r7)
/* 805DFF28  34 08 FF FF */	addic. r0, r8, -1
/* 805DFF2C  38 C4 00 08 */	addi r6, r4, 8
/* 805DFF30  7C C5 32 14 */	add r6, r5, r6
/* 805DFF34  40 80 00 0C */	bge lbl_805DFF40
/* 805DFF38  38 00 FF FF */	li r0, -1
/* 805DFF3C  90 07 00 04 */	stw r0, 4(r7)
lbl_805DFF40:
/* 805DFF40  38 08 FF FF */	addi r0, r8, -1
/* 805DFF44  2C 03 00 05 */	cmpwi r3, 5
/* 805DFF48  90 07 00 10 */	stw r0, 0x10(r7)
/* 805DFF4C  41 82 00 54 */	beq lbl_805DFFA0
/* 805DFF50  80 85 00 00 */	lwz r4, 0(r5)
/* 805DFF54  2C 04 00 00 */	cmpwi r4, 0
/* 805DFF58  40 82 00 30 */	bne lbl_805DFF88
/* 805DFF5C  80 86 00 38 */	lwz r4, 0x38(r6)
/* 805DFF60  80 07 00 08 */	lwz r0, 8(r7)
/* 805DFF64  7C 04 00 00 */	cmpw r4, r0
/* 805DFF68  40 82 00 14 */	bne lbl_805DFF7C
/* 805DFF6C  80 86 00 3C */	lwz r4, 0x3c(r6)
/* 805DFF70  80 07 00 0C */	lwz r0, 0xc(r7)
/* 805DFF74  7C 04 00 00 */	cmpw r4, r0
/* 805DFF78  4D 82 00 20 */	beqlr 
lbl_805DFF7C:
/* 805DFF7C  38 00 FF FF */	li r0, -1
/* 805DFF80  90 07 00 04 */	stw r0, 4(r7)
/* 805DFF84  4E 80 00 20 */	blr 
lbl_805DFF88:
/* 805DFF88  80 05 00 04 */	lwz r0, 4(r5)
/* 805DFF8C  7C 00 20 00 */	cmpw r0, r4
/* 805DFF90  4C 82 00 20 */	bnelr 
/* 805DFF94  38 00 FF FF */	li r0, -1
/* 805DFF98  90 07 00 04 */	stw r0, 4(r7)
/* 805DFF9C  4E 80 00 20 */	blr 
lbl_805DFFA0:
/* 805DFFA0  80 05 00 00 */	lwz r0, 0(r5)
/* 805DFFA4  2C 00 FF FF */	cmpwi r0, -1
/* 805DFFA8  4D 82 00 20 */	beqlr 
/* 805DFFAC  80 86 00 38 */	lwz r4, 0x38(r6)
/* 805DFFB0  80 07 00 08 */	lwz r0, 8(r7)
/* 805DFFB4  7C 04 00 00 */	cmpw r4, r0
/* 805DFFB8  40 82 00 14 */	bne lbl_805DFFCC
/* 805DFFBC  80 86 00 3C */	lwz r4, 0x3c(r6)
/* 805DFFC0  80 07 00 0C */	lwz r0, 0xc(r7)
/* 805DFFC4  7C 04 00 00 */	cmpw r4, r0
/* 805DFFC8  4D 82 00 20 */	beqlr 
lbl_805DFFCC:
/* 805DFFCC  38 00 FF FF */	li r0, -1
/* 805DFFD0  90 07 00 04 */	stw r0, 4(r7)
/* 805DFFD4  4E 80 00 20 */	blr 
