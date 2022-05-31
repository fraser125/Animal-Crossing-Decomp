lbl_803D76A0:
/* 803D76A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D76A4  7C 08 02 A6 */	mflr r0
/* 803D76A8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D76AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D76B0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D76B4  3C 63 00 02 */	addis r3, r3, 2
/* 803D76B8  84 03 67 98 */	lwzu r0, 0x6798(r3)
/* 803D76BC  28 00 00 00 */	cmplwi r0, 0
/* 803D76C0  41 82 00 08 */	beq lbl_803D76C8
/* 803D76C4  4B FF FE CD */	bl mNPS_schedule_manager_sub
lbl_803D76C8:
/* 803D76C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D76CC  7C 08 03 A6 */	mtlr r0
/* 803D76D0  38 21 00 10 */	addi r1, r1, 0x10
/* 803D76D4  4E 80 00 20 */	blr 
