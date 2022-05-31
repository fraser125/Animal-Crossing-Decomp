lbl_804AAF3C:
/* 804AAF3C  3C A0 80 69 */	lis r5, process@ha /* 0x8068F314@ha */
/* 804AAF40  90 83 01 A0 */	stw r4, 0x1a0(r3)
/* 804AAF44  54 80 10 3A */	slwi r0, r4, 2
/* 804AAF48  38 85 F3 14 */	addi r4, r5, process@l /* 0x8068F314@l */
/* 804AAF4C  7C 04 00 2E */	lwzx r0, r4, r0
/* 804AAF50  90 03 01 9C */	stw r0, 0x19c(r3)
/* 804AAF54  4E 80 00 20 */	blr 
