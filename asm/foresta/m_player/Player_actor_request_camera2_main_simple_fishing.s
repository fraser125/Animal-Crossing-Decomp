lbl_804DAC2C:
/* 804DAC2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DAC30  7C 08 02 A6 */	mflr r0
/* 804DAC34  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DAC38  39 61 00 20 */	addi r11, r1, 0x20
/* 804DAC3C  4B BC 02 99 */	bl func_8009AED4
/* 804DAC40  83 E3 0F 30 */	lwz r31, 0xf30(r3)
/* 804DAC44  7C 7D 1B 78 */	mr r29, r3
/* 804DAC48  7C 9E 23 78 */	mr r30, r4
/* 804DAC4C  28 1F 00 00 */	cmplwi r31, 0
/* 804DAC50  41 82 00 24 */	beq lbl_804DAC74
/* 804DAC54  7F C3 F3 78 */	mr r3, r30
/* 804DAC58  38 80 00 00 */	li r4, 0
/* 804DAC5C  4B EA 3E 69 */	bl Camera2_change_priority
/* 804DAC60  7F C3 F3 78 */	mr r3, r30
/* 804DAC64  38 9D 00 48 */	addi r4, r29, 0x48
/* 804DAC68  38 BF 00 28 */	addi r5, r31, 0x28
/* 804DAC6C  38 C0 00 05 */	li r6, 5
/* 804DAC70  4B EA 6C 05 */	bl Camera2_request_main_simple_fishing
lbl_804DAC74:
/* 804DAC74  39 61 00 20 */	addi r11, r1, 0x20
/* 804DAC78  4B BC 02 A9 */	bl func_8009AF20
/* 804DAC7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DAC80  7C 08 03 A6 */	mtlr r0
/* 804DAC84  38 21 00 20 */	addi r1, r1, 0x20
/* 804DAC88  4E 80 00 20 */	blr 
