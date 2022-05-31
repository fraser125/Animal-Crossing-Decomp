lbl_8037F698:
/* 8037F698  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037F69C  7C 08 02 A6 */	mflr r0
/* 8037F6A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037F6A4  39 61 00 20 */	addi r11, r1, 0x20
/* 8037F6A8  4B D1 B8 29 */	bl func_8009AED0
/* 8037F6AC  7C DF 33 78 */	mr r31, r6
/* 8037F6B0  7C 9D 23 78 */	mr r29, r4
/* 8037F6B4  7C 7C 1B 78 */	mr r28, r3
/* 8037F6B8  7C BE 2B 78 */	mr r30, r5
/* 8037F6BC  7F E4 FB 78 */	mr r4, r31
/* 8037F6C0  4B FF F3 F9 */	bl Camera2_check_request_main_priority
/* 8037F6C4  2C 03 00 00 */	cmpwi r3, 0
/* 8037F6C8  40 81 00 54 */	ble lbl_8037F71C
/* 8037F6CC  93 BC 1C 50 */	stw r29, 0x1c50(r28)
/* 8037F6D0  28 1E 00 00 */	cmplwi r30, 0
/* 8037F6D4  93 DC 1C 54 */	stw r30, 0x1c54(r28)
/* 8037F6D8  41 82 00 14 */	beq lbl_8037F6EC
/* 8037F6DC  38 7C 1C 58 */	addi r3, r28, 0x1c58
/* 8037F6E0  38 9E 00 48 */	addi r4, r30, 0x48
/* 8037F6E4  48 03 B7 D9 */	bl xyz_t_move
/* 8037F6E8  48 00 00 14 */	b lbl_8037F6FC
lbl_8037F6EC:
/* 8037F6EC  3C 80 80 66 */	lis r4, data_8065F050@ha /* 0x8065F050@ha */
/* 8037F6F0  38 7C 1C 58 */	addi r3, r28, 0x1c58
/* 8037F6F4  38 84 F0 50 */	addi r4, r4, data_8065F050@l /* 0x8065F050@l */
/* 8037F6F8  48 03 B7 C5 */	bl xyz_t_move
lbl_8037F6FC:
/* 8037F6FC  38 00 00 00 */	li r0, 0
/* 8037F700  7F 83 E3 78 */	mr r3, r28
/* 8037F704  90 1C 1C 64 */	stw r0, 0x1c64(r28)
/* 8037F708  7F E5 FB 78 */	mr r5, r31
/* 8037F70C  38 80 00 03 */	li r4, 3
/* 8037F710  4B FF F3 C1 */	bl Camera2_request_main_index
/* 8037F714  38 60 00 01 */	li r3, 1
/* 8037F718  48 00 00 08 */	b lbl_8037F720
lbl_8037F71C:
/* 8037F71C  38 60 00 00 */	li r3, 0
lbl_8037F720:
/* 8037F720  39 61 00 20 */	addi r11, r1, 0x20
/* 8037F724  4B D1 B7 F9 */	bl func_8009AF1C
/* 8037F728  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037F72C  7C 08 03 A6 */	mtlr r0
/* 8037F730  38 21 00 20 */	addi r1, r1, 0x20
/* 8037F734  4E 80 00 20 */	blr 
