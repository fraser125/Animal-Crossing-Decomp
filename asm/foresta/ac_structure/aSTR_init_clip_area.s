lbl_805BCDEC:
/* 805BCDEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BCDF0  7C 08 02 A6 */	mflr r0
/* 805BCDF4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BCDF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BCDFC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BCE00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BCE04  3F E3 00 02 */	addis r31, r3, 2
/* 805BCE08  80 1F 60 98 */	lwz r0, 0x6098(r31)
/* 805BCE0C  28 00 00 00 */	cmplwi r0, 0
/* 805BCE10  40 82 00 D4 */	bne lbl_805BCEE4
/* 805BCE14  38 60 00 A8 */	li r3, 0xa8
/* 805BCE18  4B DF F6 45 */	bl zelda_malloc
/* 805BCE1C  3C 80 80 5C */	lis r4, aSTR_setupActor_proc@ha /* 0x805BCA98@ha */
/* 805BCE20  90 7F 60 98 */	stw r3, 0x6098(r31)
/* 805BCE24  38 04 CA 98 */	addi r0, r4, aSTR_setupActor_proc@l /* 0x805BCA98@l */
/* 805BCE28  3D 00 80 5C */	lis r8, aSTR_get_actor_area_proc@ha /* 0x805BCD48@ha */
/* 805BCE2C  90 03 00 00 */	stw r0, 0(r3)
/* 805BCE30  3C A0 80 5C */	lis r5, aSTR_get_overlay_area_proc@ha /* 0x805BCC90@ha */
/* 805BCE34  38 05 CC 90 */	addi r0, r5, aSTR_get_overlay_area_proc@l /* 0x805BCC90@l */
/* 805BCE38  3C E0 80 5C */	lis r7, aSTR_free_actor_area_proc@ha /* 0x805BCDA4@ha */
/* 805BCE3C  80 7F 60 98 */	lwz r3, 0x6098(r31)
/* 805BCE40  3C A0 80 5C */	lis r5, func_805BCA60@ha /* 0x805BCA60@ha */
/* 805BCE44  3D 20 80 5C */	lis r9, aSTR_free_overlay_area_proc@ha /* 0x805BCD00@ha */
/* 805BCE48  39 88 CD 48 */	addi r12, r8, aSTR_get_actor_area_proc@l /* 0x805BCD48@l */
/* 805BCE4C  90 03 00 04 */	stw r0, 4(r3)
/* 805BCE50  38 09 CD 00 */	addi r0, r9, aSTR_free_overlay_area_proc@l /* 0x805BCD00@l */
/* 805BCE54  39 67 CD A4 */	addi r11, r7, aSTR_free_actor_area_proc@l /* 0x805BCDA4@l */
/* 805BCE58  38 80 00 00 */	li r4, 0
/* 805BCE5C  81 3F 60 98 */	lwz r9, 0x6098(r31)
/* 805BCE60  39 45 CA 60 */	addi r10, r5, func_805BCA60@l /* 0x805BCA60@l */
/* 805BCE64  3C C0 81 20 */	lis r6, data_811FA228@ha /* 0x811FA228@ha */
/* 805BCE68  3C 60 81 20 */	lis r3, aSTR_overlay@ha /* 0x811FBBE4@ha */
/* 805BCE6C  90 09 00 08 */	stw r0, 8(r9)
/* 805BCE70  39 26 A2 28 */	addi r9, r6, data_811FA228@l /* 0x811FA228@l */
/* 805BCE74  38 C3 BB E4 */	addi r6, r3, aSTR_overlay@l /* 0x811FBBE4@l */
/* 805BCE78  38 00 00 09 */	li r0, 9
/* 805BCE7C  81 1F 60 98 */	lwz r8, 0x6098(r31)
/* 805BCE80  7C 87 23 78 */	mr r7, r4
/* 805BCE84  7C 85 23 78 */	mr r5, r4
/* 805BCE88  38 60 00 00 */	li r3, 0
/* 805BCE8C  91 88 00 0C */	stw r12, 0xc(r8)
/* 805BCE90  81 1F 60 98 */	lwz r8, 0x6098(r31)
/* 805BCE94  91 68 00 10 */	stw r11, 0x10(r8)
/* 805BCE98  81 1F 60 98 */	lwz r8, 0x6098(r31)
/* 805BCE9C  91 48 00 A4 */	stw r10, 0xa4(r8)
/* 805BCEA0  81 1F 60 98 */	lwz r8, 0x6098(r31)
/* 805BCEA4  39 48 00 14 */	addi r10, r8, 0x14
/* 805BCEA8  39 68 00 38 */	addi r11, r8, 0x38
/* 805BCEAC  39 88 00 5C */	addi r12, r8, 0x5c
/* 805BCEB0  7C 09 03 A6 */	mtctr r0
lbl_805BCEB4:
/* 805BCEB4  7D 09 22 14 */	add r8, r9, r4
/* 805BCEB8  7C 06 1A 14 */	add r0, r6, r3
/* 805BCEBC  91 0A 00 00 */	stw r8, 0(r10)
/* 805BCEC0  38 63 24 00 */	addi r3, r3, 0x2400
/* 805BCEC4  38 84 02 DC */	addi r4, r4, 0x2dc
/* 805BCEC8  39 4A 00 04 */	addi r10, r10, 4
/* 805BCECC  90 EB 00 00 */	stw r7, 0(r11)
/* 805BCED0  39 6B 00 04 */	addi r11, r11, 4
/* 805BCED4  90 0C 00 00 */	stw r0, 0(r12)
/* 805BCED8  90 AC 00 04 */	stw r5, 4(r12)
/* 805BCEDC  39 8C 00 08 */	addi r12, r12, 8
/* 805BCEE0  42 00 FF D4 */	bdnz lbl_805BCEB4
lbl_805BCEE4:
/* 805BCEE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BCEE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BCEEC  7C 08 03 A6 */	mtlr r0
/* 805BCEF0  38 21 00 10 */	addi r1, r1, 0x10
/* 805BCEF4  4E 80 00 20 */	blr 
