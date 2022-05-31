lbl_805E26E4:
/* 805E26E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E26E8  7C 08 02 A6 */	mflr r0
/* 805E26EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E26F0  39 61 00 20 */	addi r11, r1, 0x20
/* 805E26F4  4B AB 87 D9 */	bl func_8009AECC
/* 805E26F8  7C 7B 1B 78 */	mr r27, r3
/* 805E26FC  7C 9C 23 78 */	mr r28, r4
/* 805E2700  83 C3 00 2C */	lwz r30, 0x2c(r3)
/* 805E2704  A8 1E 00 06 */	lha r0, 6(r30)
/* 805E2708  2C 00 00 28 */	cmpwi r0, 0x28
/* 805E270C  41 82 00 5C */	beq lbl_805E2768
/* 805E2710  80 7E 09 88 */	lwz r3, 0x988(r30)
/* 805E2714  83 BC 00 00 */	lwz r29, 0(r28)
/* 805E2718  38 63 02 F4 */	addi r3, r3, 0x2f4
/* 805E271C  4B E2 9B 3D */	bl Matrix_put
/* 805E2720  83 FD 02 D0 */	lwz r31, 0x2d0(r29)
/* 805E2724  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805E2728  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805E272C  7F A3 EB 78 */	mr r3, r29
/* 805E2730  38 9F 00 08 */	addi r4, r31, 8
/* 805E2734  90 9D 02 D0 */	stw r4, 0x2d0(r29)
/* 805E2738  90 1F 00 00 */	stw r0, 0(r31)
/* 805E273C  4B E2 AC 99 */	bl _Matrix_to_Mtx_new
/* 805E2740  90 7F 00 04 */	stw r3, 4(r31)
/* 805E2744  3C 60 80 6D */	lis r3, proc@ha /* 0x806CD478@ha */
/* 805E2748  38 A3 D4 78 */	addi r5, r3, proc@l /* 0x806CD478@l */
/* 805E274C  7F 63 DB 78 */	mr r3, r27
/* 805E2750  A8 1E 00 06 */	lha r0, 6(r30)
/* 805E2754  7F 84 E3 78 */	mr r4, r28
/* 805E2758  54 00 10 3A */	slwi r0, r0, 2
/* 805E275C  7D 85 00 2E */	lwzx r12, r5, r0
/* 805E2760  7D 89 03 A6 */	mtctr r12
/* 805E2764  4E 80 04 21 */	bctrl 
lbl_805E2768:
/* 805E2768  39 61 00 20 */	addi r11, r1, 0x20
/* 805E276C  4B AB 87 AD */	bl func_8009AF18
/* 805E2770  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E2774  7C 08 03 A6 */	mtlr r0
/* 805E2778  38 21 00 20 */	addi r1, r1, 0x20
/* 805E277C  4E 80 00 20 */	blr 
