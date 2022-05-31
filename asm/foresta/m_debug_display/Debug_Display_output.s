lbl_8039616C:
/* 8039616C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80396170  7C 08 02 A6 */	mflr r0
/* 80396174  90 01 00 24 */	stw r0, 0x24(r1)
/* 80396178  39 61 00 20 */	addi r11, r1, 0x20
/* 8039617C  4B D0 4D 55 */	bl func_8009AED0
/* 80396180  3C 80 81 16 */	lis r4, debug_display@ha /* 0x81166140@ha */
/* 80396184  3C A0 80 65 */	lis r5, debug_display_shape_data@ha /* 0x806511E0@ha */
/* 80396188  38 C4 61 40 */	addi r6, r4, debug_display@l /* 0x81166140@l */
/* 8039618C  3C 80 80 65 */	lis r4, data_806511D8@ha /* 0x806511D8@ha */
/* 80396190  83 A6 00 00 */	lwz r29, 0(r6)
/* 80396194  7C 7C 1B 78 */	mr r28, r3
/* 80396198  3B C5 11 E0 */	addi r30, r5, debug_display_shape_data@l /* 0x806511E0@l */
/* 8039619C  3B E4 11 D8 */	addi r31, r4, data_806511D8@l /* 0x806511D8@l */
/* 803961A0  48 00 00 34 */	b lbl_803961D4
lbl_803961A4:
/* 803961A4  A8 1D 00 24 */	lha r0, 0x24(r29)
/* 803961A8  7F A3 EB 78 */	mr r3, r29
/* 803961AC  7F 85 E3 78 */	mr r5, r28
/* 803961B0  54 00 18 38 */	slwi r0, r0, 3
/* 803961B4  7C 9E 02 14 */	add r4, r30, r0
/* 803961B8  A8 04 00 00 */	lha r0, 0(r4)
/* 803961BC  80 84 00 04 */	lwz r4, 4(r4)
/* 803961C0  54 00 10 3A */	slwi r0, r0, 2
/* 803961C4  7D 9F 00 2E */	lwzx r12, r31, r0
/* 803961C8  7D 89 03 A6 */	mtctr r12
/* 803961CC  4E 80 04 21 */	bctrl 
/* 803961D0  83 BD 00 28 */	lwz r29, 0x28(r29)
lbl_803961D4:
/* 803961D4  28 1D 00 00 */	cmplwi r29, 0
/* 803961D8  40 82 FF CC */	bne lbl_803961A4
/* 803961DC  39 61 00 20 */	addi r11, r1, 0x20
/* 803961E0  4B D0 4D 3D */	bl func_8009AF1C
/* 803961E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803961E8  7C 08 03 A6 */	mtlr r0
/* 803961EC  38 21 00 20 */	addi r1, r1, 0x20
/* 803961F0  4E 80 00 20 */	blr 
