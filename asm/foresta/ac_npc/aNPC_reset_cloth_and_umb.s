lbl_805329FC:
/* 805329FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80532A00  7C 08 02 A6 */	mflr r0
/* 80532A04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80532A08  39 61 00 20 */	addi r11, r1, 0x20
/* 80532A0C  4B B6 84 BD */	bl func_8009AEC8
/* 80532A10  7C 7A 1B 78 */	mr r26, r3
/* 80532A14  7C 9B 23 78 */	mr r27, r4
/* 80532A18  83 E3 01 7C */	lwz r31, 0x17c(r3)
/* 80532A1C  A3 DF 08 E4 */	lhz r30, 0x8e4(r31)
/* 80532A20  7F E3 FB 78 */	mr r3, r31
/* 80532A24  8B BF 08 EB */	lbz r29, 0x8eb(r31)
/* 80532A28  8B 9F 08 EC */	lbz r28, 0x8ec(r31)
/* 80532A2C  4B E9 C4 E1 */	bl mNpc_SetDefAnimalCloth
/* 80532A30  A0 9F 08 E4 */	lhz r4, 0x8e4(r31)
/* 80532A34  7F 43 D3 78 */	mr r3, r26
/* 80532A38  38 A0 00 FF */	li r5, 0xff
/* 80532A3C  4B FF 9D D5 */	bl aNPC_setup_chg_cloth
/* 80532A40  7F 43 D3 78 */	mr r3, r26
/* 80532A44  7F C4 F3 78 */	mr r4, r30
/* 80532A48  7F A5 EB 78 */	mr r5, r29
/* 80532A4C  4B FF 9D DD */	bl aNPC_setup_cloth
/* 80532A50  7F E3 FB 78 */	mr r3, r31
/* 80532A54  4B E9 C4 F9 */	bl mNpc_SetDefAnimalUmbrella
/* 80532A58  88 1F 08 EC */	lbz r0, 0x8ec(r31)
/* 80532A5C  98 1A 08 9F */	stb r0, 0x89f(r26)
/* 80532A60  88 1A 08 98 */	lbz r0, 0x898(r26)
/* 80532A64  28 00 00 01 */	cmplwi r0, 1
/* 80532A68  40 82 00 08 */	bne lbl_80532A70
/* 80532A6C  9B 9F 08 EC */	stb r28, 0x8ec(r31)
lbl_80532A70:
/* 80532A70  7F 43 D3 78 */	mr r3, r26
/* 80532A74  7F 64 DB 78 */	mr r4, r27
/* 80532A78  38 A0 FF FC */	li r5, -4
/* 80532A7C  4B FF E1 DD */	bl aNPC_set_relation
/* 80532A80  7F 43 D3 78 */	mr r3, r26
/* 80532A84  38 80 00 03 */	li r4, 3
/* 80532A88  38 A0 00 01 */	li r5, 1
/* 80532A8C  4B FF E2 41 */	bl aNPC_set_feel_info
/* 80532A90  39 61 00 20 */	addi r11, r1, 0x20
/* 80532A94  4B B6 84 81 */	bl func_8009AF14
/* 80532A98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80532A9C  7C 08 03 A6 */	mtlr r0
/* 80532AA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80532AA4  4E 80 00 20 */	blr 
