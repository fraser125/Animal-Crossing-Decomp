lbl_80490838:
/* 80490838  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049083C  7C 08 02 A6 */	mflr r0
/* 80490840  90 01 00 34 */	stw r0, 0x34(r1)
/* 80490844  39 61 00 30 */	addi r11, r1, 0x30
/* 80490848  4B C0 A6 81 */	bl func_8009AEC8
/* 8049084C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80490850  7C 7B 1B 78 */	mr r27, r3
/* 80490854  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80490858  7C 9C 23 78 */	mr r28, r4
/* 8049085C  3F E5 00 02 */	addis r31, r5, 2
/* 80490860  3B A0 FF FF */	li r29, -1
/* 80490864  80 1F 61 3C */	lwz r0, 0x613c(r31)
/* 80490868  28 00 00 00 */	cmplwi r0, 0
/* 8049086C  41 82 00 EC */	beq lbl_80490958
/* 80490870  4B F4 3B 55 */	bl mNpc_GetIslandCheckFtrMsg
/* 80490874  2C 03 00 00 */	cmpwi r3, 0
/* 80490878  40 82 00 14 */	bne lbl_8049088C
/* 8049087C  3B C0 00 00 */	li r30, 0
/* 80490880  38 60 00 01 */	li r3, 1
/* 80490884  4B F4 3B 35 */	bl mNpc_SetIslandCheckFtrMsg
/* 80490888  48 00 00 20 */	b lbl_804908A8
lbl_8049088C:
/* 8049088C  4B BC C4 69 */	bl fqrand
/* 80490890  3C 60 80 64 */	lis r3, lit_1431@ha /* 0x80644C54@ha */
/* 80490894  C0 03 4C 54 */	lfs f0, lit_1431@l(r3)  /* 0x80644C54@l */
/* 80490898  EC 00 00 72 */	fmuls f0, f0, f1
/* 8049089C  FC 00 00 1E */	fctiwz f0, f0
/* 804908A0  D8 01 00 08 */	stfd f0, 8(r1)
/* 804908A4  83 C1 00 0C */	lwz r30, 0xc(r1)
lbl_804908A8:
/* 804908A8  3C 80 80 69 */	lis r4, check_proc@ha /* 0x8068B36C@ha */
/* 804908AC  3C A0 81 1D */	lis r5, l_normal_info@ha /* 0x811CEBF0@ha */
/* 804908B0  57 C0 10 3A */	slwi r0, r30, 2
/* 804908B4  7F 63 DB 78 */	mr r3, r27
/* 804908B8  38 84 B3 6C */	addi r4, r4, check_proc@l /* 0x8068B36C@l */
/* 804908BC  38 A5 EB F0 */	addi r5, r5, l_normal_info@l /* 0x811CEBF0@l */
/* 804908C0  3B 45 00 10 */	addi r26, r5, 0x10
/* 804908C4  7D 84 00 2E */	lwzx r12, r4, r0
/* 804908C8  7F 45 D3 78 */	mr r5, r26
/* 804908CC  80 9F 61 3C */	lwz r4, 0x613c(r31)
/* 804908D0  7D 89 03 A6 */	mtctr r12
/* 804908D4  4E 80 04 21 */	bctrl 
/* 804908D8  2C 03 00 00 */	cmpwi r3, 0
/* 804908DC  40 82 00 7C */	bne lbl_80490958
/* 804908E0  4B BC C4 15 */	bl fqrand
/* 804908E4  3C 60 80 64 */	lis r3, lit_1432@ha /* 0x80644C58@ha */
/* 804908E8  3C 80 80 69 */	lis r4, check_proc@ha /* 0x8068B36C@ha */
/* 804908EC  38 A3 4C 58 */	addi r5, r3, lit_1432@l /* 0x80644C58@l */
/* 804908F0  7F 63 DB 78 */	mr r3, r27
/* 804908F4  C0 05 00 00 */	lfs f0, 0(r5)
/* 804908F8  38 C4 B3 6C */	addi r6, r4, check_proc@l /* 0x8068B36C@l */
/* 804908FC  7F 45 D3 78 */	mr r5, r26
/* 80490900  80 9F 61 3C */	lwz r4, 0x613c(r31)
/* 80490904  EC 00 00 72 */	fmuls f0, f0, f1
/* 80490908  FC 00 00 1E */	fctiwz f0, f0
/* 8049090C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80490910  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 80490914  3B C7 00 05 */	addi r30, r7, 5
/* 80490918  57 C0 10 3A */	slwi r0, r30, 2
/* 8049091C  7D 86 00 2E */	lwzx r12, r6, r0
/* 80490920  7D 89 03 A6 */	mtctr r12
/* 80490924  4E 80 04 21 */	bctrl 
/* 80490928  2C 03 00 01 */	cmpwi r3, 1
/* 8049092C  40 82 00 2C */	bne lbl_80490958
/* 80490930  2C 1E 00 05 */	cmpwi r30, 5
/* 80490934  40 82 00 24 */	bne lbl_80490958
/* 80490938  80 9F 61 3C */	lwz r4, 0x613c(r31)
/* 8049093C  7F 63 DB 78 */	mr r3, r27
/* 80490940  7F 45 D3 78 */	mr r5, r26
/* 80490944  4B FF F8 FD */	bl aQMgr_check_trade_0
/* 80490948  2C 03 00 01 */	cmpwi r3, 1
/* 8049094C  40 82 00 08 */	bne lbl_80490954
/* 80490950  3B C0 00 00 */	li r30, 0
lbl_80490954:
/* 80490954  38 60 00 01 */	li r3, 1
lbl_80490958:
/* 80490958  2C 03 00 01 */	cmpwi r3, 1
/* 8049095C  40 82 00 18 */	bne lbl_80490974
/* 80490960  3C 60 80 69 */	lis r3, msg_table_1413@ha /* 0x8068B390@ha */
/* 80490964  57 80 10 3A */	slwi r0, r28, 2
/* 80490968  38 63 B3 90 */	addi r3, r3, msg_table_1413@l /* 0x8068B390@l */
/* 8049096C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80490970  7F BE 02 14 */	add r29, r30, r0
lbl_80490974:
/* 80490974  7F A3 EB 78 */	mr r3, r29
/* 80490978  39 61 00 30 */	addi r11, r1, 0x30
/* 8049097C  4B C0 A5 99 */	bl func_8009AF14
/* 80490980  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80490984  7C 08 03 A6 */	mtlr r0
/* 80490988  38 21 00 30 */	addi r1, r1, 0x30
/* 8049098C  4E 80 00 20 */	blr 
