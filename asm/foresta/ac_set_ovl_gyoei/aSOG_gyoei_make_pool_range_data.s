lbl_8049A650:
/* 8049A650  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049A654  7C 08 02 A6 */	mflr r0
/* 8049A658  3C C0 80 69 */	lis r6, p_month@ha /* 0x8068CB68@ha */
/* 8049A65C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049A660  7C A0 0E 70 */	srawi r0, r5, 1
/* 8049A664  54 07 18 38 */	slwi r7, r0, 3
/* 8049A668  54 A0 17 7A */	rlwinm r0, r5, 2, 0x1d, 0x1d
/* 8049A66C  38 A6 CB 68 */	addi r5, r6, p_month@l /* 0x8068CB68@l */
/* 8049A670  7C A5 3A 14 */	add r5, r5, r7
/* 8049A674  7C A5 00 2E */	lwzx r5, r5, r0
/* 8049A678  28 05 00 00 */	cmplwi r5, 0
/* 8049A67C  41 82 00 10 */	beq lbl_8049A68C
/* 8049A680  54 80 18 38 */	slwi r0, r4, 3
/* 8049A684  7C 85 02 14 */	add r4, r5, r0
/* 8049A688  4B FF FD 31 */	bl aSOG_gyoei_copy_range_data
lbl_8049A68C:
/* 8049A68C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049A690  7C 08 03 A6 */	mtlr r0
/* 8049A694  38 21 00 10 */	addi r1, r1, 0x10
/* 8049A698  4E 80 00 20 */	blr 
