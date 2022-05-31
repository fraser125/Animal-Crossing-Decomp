lbl_805CAB04:
/* 805CAB04  81 25 02 D0 */	lwz r9, 0x2d0(r5)
/* 805CAB08  3D 00 DE 00 */	lis r8, 0xde00
/* 805CAB0C  3C C0 80 6D */	lis r6, paper_disp_model@ha /* 0x806C9D78@ha */
/* 805CAB10  3C 80 80 6D */	lis r4, paper_disp_sen_model@ha /* 0x806CA178@ha */
/* 805CAB14  91 09 00 00 */	stw r8, 0(r9)
/* 805CAB18  38 E6 9D 78 */	addi r7, r6, paper_disp_model@l /* 0x806C9D78@l */
/* 805CAB1C  38 C4 A1 78 */	addi r6, r4, paper_disp_sen_model@l /* 0x806CA178@l */
/* 805CAB20  A0 03 00 00 */	lhz r0, 0(r3)
/* 805CAB24  54 00 10 3A */	slwi r0, r0, 2
/* 805CAB28  7C 07 00 2E */	lwzx r0, r7, r0
/* 805CAB2C  90 09 00 04 */	stw r0, 4(r9)
/* 805CAB30  39 29 00 08 */	addi r9, r9, 8
/* 805CAB34  A0 03 00 00 */	lhz r0, 0(r3)
/* 805CAB38  54 00 10 3A */	slwi r0, r0, 2
/* 805CAB3C  7C 06 00 2E */	lwzx r0, r6, r0
/* 805CAB40  28 00 00 00 */	cmplwi r0, 0
/* 805CAB44  41 82 00 2C */	beq lbl_805CAB70
/* 805CAB48  3C 80 80 A3 */	lis r4, mCL_lat_letter_sen_mode@ha /* 0x80A32F28@ha */
/* 805CAB4C  91 09 00 00 */	stw r8, 0(r9)
/* 805CAB50  38 04 2F 28 */	addi r0, r4, mCL_lat_letter_sen_mode@l /* 0x80A32F28@l */
/* 805CAB54  90 09 00 04 */	stw r0, 4(r9)
/* 805CAB58  91 09 00 08 */	stw r8, 8(r9)
/* 805CAB5C  A0 03 00 00 */	lhz r0, 0(r3)
/* 805CAB60  54 00 10 3A */	slwi r0, r0, 2
/* 805CAB64  7C 06 00 2E */	lwzx r0, r6, r0
/* 805CAB68  90 09 00 0C */	stw r0, 0xc(r9)
/* 805CAB6C  39 29 00 10 */	addi r9, r9, 0x10
lbl_805CAB70:
/* 805CAB70  91 25 02 D0 */	stw r9, 0x2d0(r5)
/* 805CAB74  4E 80 00 20 */	blr 
