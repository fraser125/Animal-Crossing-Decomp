lbl_804824AC:
/* 804824AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804824B0  7C 08 02 A6 */	mflr r0
/* 804824B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804824B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804824BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804824C0  7C 9E 23 78 */	mr r30, r4
/* 804824C4  7C 64 1B 78 */	mr r4, r3
/* 804824C8  38 61 00 08 */	addi r3, r1, 8
/* 804824CC  4B FF 5B 59 */	bl aMR_GetFtrShapeCenter
/* 804824D0  80 9E 00 00 */	lwz r4, 0(r30)
/* 804824D4  38 7E 1D 90 */	addi r3, r30, 0x1d90
/* 804824D8  4B F3 9C 65 */	bl Global_light_read
/* 804824DC  80 9E 1D 90 */	lwz r4, 0x1d90(r30)
/* 804824E0  7C 7F 1B 78 */	mr r31, r3
/* 804824E4  38 A1 00 08 */	addi r5, r1, 8
/* 804824E8  4B F3 9A 49 */	bl LightsN_list_check
/* 804824EC  80 9E 00 00 */	lwz r4, 0(r30)
/* 804824F0  7F E3 FB 78 */	mr r3, r31
/* 804824F4  4B F3 95 05 */	bl LightsN_disp
/* 804824F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804824FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80482500  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80482504  7C 08 03 A6 */	mtlr r0
/* 80482508  38 21 00 20 */	addi r1, r1, 0x20
/* 8048250C  4E 80 00 20 */	blr 
