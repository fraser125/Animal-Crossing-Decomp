lbl_803DA820:
/* 803DA820  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DA824  7C 08 02 A6 */	mflr r0
/* 803DA828  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DA82C  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA830  4B CC 06 99 */	bl func_8009AEC8
/* 803DA834  7C 7A 1B 78 */	mr r26, r3
/* 803DA838  7C 9B 23 78 */	mr r27, r4
/* 803DA83C  7C BC 2B 78 */	mr r28, r5
/* 803DA840  4B FF EE 31 */	bl mPlib_get_player_actor_main_index
/* 803DA844  2C 03 00 41 */	cmpwi r3, 0x41
/* 803DA848  40 82 00 5C */	bne lbl_803DA8A4
/* 803DA84C  7F 43 D3 78 */	mr r3, r26
/* 803DA850  4B FF ED F1 */	bl get_player_actor_withoutCheck
/* 803DA854  7C 7D 1B 78 */	mr r29, r3
/* 803DA858  7F 43 D3 78 */	mr r3, r26
/* 803DA85C  4B FF ED E5 */	bl get_player_actor_withoutCheck
/* 803DA860  7C 7E 1B 78 */	mr r30, r3
/* 803DA864  7F 43 D3 78 */	mr r3, r26
/* 803DA868  4B FF ED D9 */	bl get_player_actor_withoutCheck
/* 803DA86C  7C 7F 1B 78 */	mr r31, r3
/* 803DA870  7F 43 D3 78 */	mr r3, r26
/* 803DA874  4B FF ED CD */	bl get_player_actor_withoutCheck
/* 803DA878  81 83 12 B0 */	lwz r12, 0x12b0(r3)
/* 803DA87C  7F 43 D3 78 */	mr r3, r26
/* 803DA880  7F 67 DB 78 */	mr r7, r27
/* 803DA884  7F 88 E3 78 */	mr r8, r28
/* 803DA888  80 9F 0D 18 */	lwz r4, 0xd18(r31)
/* 803DA88C  39 20 00 13 */	li r9, 0x13
/* 803DA890  80 BE 0D 1C */	lwz r5, 0xd1c(r30)
/* 803DA894  80 DD 0C F8 */	lwz r6, 0xcf8(r29)
/* 803DA898  7D 89 03 A6 */	mtctr r12
/* 803DA89C  4E 80 04 21 */	bctrl 
/* 803DA8A0  48 00 00 40 */	b lbl_803DA8E0
lbl_803DA8A4:
/* 803DA8A4  7F 43 D3 78 */	mr r3, r26
/* 803DA8A8  4B FF ED 99 */	bl get_player_actor_withoutCheck
/* 803DA8AC  7C 7F 1B 78 */	mr r31, r3
/* 803DA8B0  7F 43 D3 78 */	mr r3, r26
/* 803DA8B4  4B FF ED 8D */	bl get_player_actor_withoutCheck
/* 803DA8B8  81 83 12 B0 */	lwz r12, 0x12b0(r3)
/* 803DA8BC  7F 43 D3 78 */	mr r3, r26
/* 803DA8C0  7F 67 DB 78 */	mr r7, r27
/* 803DA8C4  7F 88 E3 78 */	mr r8, r28
/* 803DA8C8  80 DF 0C F8 */	lwz r6, 0xcf8(r31)
/* 803DA8CC  38 80 00 00 */	li r4, 0
/* 803DA8D0  38 A0 00 00 */	li r5, 0
/* 803DA8D4  39 20 00 13 */	li r9, 0x13
/* 803DA8D8  7D 89 03 A6 */	mtctr r12
/* 803DA8DC  4E 80 04 21 */	bctrl 
lbl_803DA8E0:
/* 803DA8E0  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA8E4  4B CC 06 31 */	bl func_8009AF14
/* 803DA8E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DA8EC  7C 08 03 A6 */	mtlr r0
/* 803DA8F0  38 21 00 20 */	addi r1, r1, 0x20
/* 803DA8F4  4E 80 00 20 */	blr 
