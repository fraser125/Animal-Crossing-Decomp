lbl_803AC67C:
/* 803AC67C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AC680  7C 08 02 A6 */	mflr r0
/* 803AC684  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803AC688  7C 67 1B 78 */	mr r7, r3
/* 803AC68C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803AC690  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AC694  3C 65 00 01 */	addis r3, r5, 1
/* 803AC698  3C 80 47 41 */	lis r4, 0x4741 /* 0x47414645@ha */
/* 803AC69C  A0 C3 91 2A */	lhz r6, -0x6ed6(r3)
/* 803AC6A0  38 04 46 45 */	addi r0, r4, 0x4645 /* 0x47414645@l */
/* 803AC6A4  3C 85 00 02 */	addis r4, r5, 2
/* 803AC6A8  38 67 00 0A */	addi r3, r7, 0xa
/* 803AC6AC  90 07 00 04 */	stw r0, 4(r7)
/* 803AC6B0  38 84 61 20 */	addi r4, r4, 0x6120
/* 803AC6B4  B0 C7 00 08 */	sth r6, 8(r7)
/* 803AC6B8  48 05 AB 7D */	bl lbRTC_TimeCopy
/* 803AC6BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AC6C0  7C 08 03 A6 */	mtlr r0
/* 803AC6C4  38 21 00 10 */	addi r1, r1, 0x10
/* 803AC6C8  4E 80 00 20 */	blr 
