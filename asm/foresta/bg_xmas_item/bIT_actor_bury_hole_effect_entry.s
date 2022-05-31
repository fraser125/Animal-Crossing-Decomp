lbl_804C89BC:
/* 804C89BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C89C0  7C 08 02 A6 */	mflr r0
/* 804C89C4  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 804C89C8  7C A6 2B 78 */	mr r6, r5
/* 804C89CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C89D0  38 E7 85 38 */	addi r7, r7, common_data@l /* 0x81138538@l */
/* 804C89D4  7C 85 23 78 */	mr r5, r4
/* 804C89D8  39 00 00 02 */	li r8, 2
/* 804C89DC  3C 87 00 02 */	addis r4, r7, 2
/* 804C89E0  39 20 00 00 */	li r9, 0
/* 804C89E4  80 E4 60 80 */	lwz r7, 0x6080(r4)
/* 804C89E8  7C 64 1B 78 */	mr r4, r3
/* 804C89EC  80 67 00 00 */	lwz r3, 0(r7)
/* 804C89F0  38 E0 00 00 */	li r7, 0
/* 804C89F4  3C 63 00 01 */	addis r3, r3, 1
/* 804C89F8  38 63 37 B0 */	addi r3, r3, 0x37b0
/* 804C89FC  48 00 00 15 */	bl bIT_actor_hole_effect_entry
/* 804C8A00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C8A04  7C 08 03 A6 */	mtlr r0
/* 804C8A08  38 21 00 10 */	addi r1, r1, 0x10
/* 804C8A0C  4E 80 00 20 */	blr 
