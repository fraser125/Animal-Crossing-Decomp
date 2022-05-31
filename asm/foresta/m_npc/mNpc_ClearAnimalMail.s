lbl_803CB648:
/* 803CB648  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CB64C  7C 08 02 A6 */	mflr r0
/* 803CB650  38 80 00 C0 */	li r4, 0xc0
/* 803CB654  38 A0 00 20 */	li r5, 0x20
/* 803CB658  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CB65C  38 00 00 FF */	li r0, 0xff
/* 803CB660  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CB664  7C 7F 1B 78 */	mr r31, r3
/* 803CB668  98 03 00 00 */	stb r0, 0(r3)
/* 803CB66C  38 00 00 00 */	li r0, 0
/* 803CB670  38 7F 00 1D */	addi r3, r31, 0x1d
/* 803CB674  98 1F 00 01 */	stb r0, 1(r31)
/* 803CB678  B0 1F 00 02 */	sth r0, 2(r31)
/* 803CB67C  4B FE F3 CD */	bl mem_clear
/* 803CB680  3C 60 80 64 */	lis r3, mTM_rtcTime_ymd_clear_code@ha /* 0x806432CC@ha */
/* 803CB684  38 83 32 CC */	addi r4, r3, mTM_rtcTime_ymd_clear_code@l /* 0x806432CC@l */
/* 803CB688  A0 04 00 00 */	lhz r0, 0(r4)
/* 803CB68C  88 64 00 02 */	lbz r3, 2(r4)
/* 803CB690  B0 1F 00 FE */	sth r0, 0xfe(r31)
/* 803CB694  88 04 00 03 */	lbz r0, 3(r4)
/* 803CB698  98 7F 01 00 */	stb r3, 0x100(r31)
/* 803CB69C  98 1F 01 01 */	stb r0, 0x101(r31)
/* 803CB6A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CB6A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CB6A8  7C 08 03 A6 */	mtlr r0
/* 803CB6AC  38 21 00 10 */	addi r1, r1, 0x10
/* 803CB6B0  4E 80 00 20 */	blr 
