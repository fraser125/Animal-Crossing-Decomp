lbl_80489D50:
/* 80489D50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80489D54  7C 08 02 A6 */	mflr r0
/* 80489D58  90 01 00 34 */	stw r0, 0x34(r1)
/* 80489D5C  39 61 00 30 */	addi r11, r1, 0x30
/* 80489D60  4B C1 11 61 */	bl func_8009AEC0
/* 80489D64  7C 7F 1B 78 */	mr r31, r3
/* 80489D68  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80489D6C  80 DF 01 78 */	lwz r6, 0x178(r31)
/* 80489D70  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 80489D74  3C 65 00 02 */	addis r3, r5, 2
/* 80489D78  2C 04 00 01 */	cmpwi r4, 1
/* 80489D7C  80 C6 00 00 */	lwz r6, 0(r6)
/* 80489D80  3F 25 00 01 */	addis r25, r5, 1
/* 80489D84  83 63 61 3C */	lwz r27, 0x613c(r3)
/* 80489D88  3B 80 00 00 */	li r28, 0
/* 80489D8C  80 66 01 7C */	lwz r3, 0x17c(r6)
/* 80489D90  3B 00 FF FF */	li r24, -1
/* 80489D94  3B 5B 00 68 */	addi r26, r27, 0x68
/* 80489D98  3B 39 74 38 */	addi r25, r25, 0x7438
/* 80489D9C  93 9F 02 00 */	stw r28, 0x200(r31)
/* 80489DA0  7C 7E 1B 78 */	mr r30, r3
/* 80489DA4  38 63 08 A8 */	addi r3, r3, 0x8a8
/* 80489DA8  41 82 00 74 */	beq lbl_80489E1C
/* 80489DAC  40 80 00 10 */	bge lbl_80489DBC
/* 80489DB0  2C 04 00 00 */	cmpwi r4, 0
/* 80489DB4  40 80 00 14 */	bge lbl_80489DC8
/* 80489DB8  48 00 00 E4 */	b lbl_80489E9C
lbl_80489DBC:
/* 80489DBC  2C 04 00 03 */	cmpwi r4, 3
/* 80489DC0  40 80 00 DC */	bge lbl_80489E9C
/* 80489DC4  48 00 00 94 */	b lbl_80489E58
lbl_80489DC8:
/* 80489DC8  3B 20 00 00 */	li r25, 0
/* 80489DCC  3B C0 00 00 */	li r30, 0
lbl_80489DD0:
/* 80489DD0  3B BC 00 94 */	addi r29, r28, 0x94
/* 80489DD4  7F BB EA 14 */	add r29, r27, r29
/* 80489DD8  7F A3 EB 78 */	mr r3, r29
/* 80489DDC  4B FF FF 4D */	bl aQMgr_actor_check_free_quest
/* 80489DE0  2C 03 00 01 */	cmpwi r3, 1
/* 80489DE4  40 82 00 20 */	bne lbl_80489E04
/* 80489DE8  7C 1A F2 2E */	lhzx r0, r26, r30
/* 80489DEC  28 00 00 00 */	cmplwi r0, 0
/* 80489DF0  40 82 00 14 */	bne lbl_80489E04
/* 80489DF4  93 3F 01 DC */	stw r25, 0x1dc(r31)
/* 80489DF8  7F 38 CB 78 */	mr r24, r25
/* 80489DFC  93 BF 02 00 */	stw r29, 0x200(r31)
/* 80489E00  48 00 00 9C */	b lbl_80489E9C
lbl_80489E04:
/* 80489E04  3B 39 00 01 */	addi r25, r25, 1
/* 80489E08  3B 9C 00 28 */	addi r28, r28, 0x28
/* 80489E0C  2C 19 00 0F */	cmpwi r25, 0xf
/* 80489E10  3B DE 00 02 */	addi r30, r30, 2
/* 80489E14  41 80 FF BC */	blt lbl_80489DD0
/* 80489E18  48 00 00 84 */	b lbl_80489E9C
lbl_80489E1C:
/* 80489E1C  3B C0 00 00 */	li r30, 0
lbl_80489E20:
/* 80489E20  3B BE 02 EC */	addi r29, r30, 0x2ec
/* 80489E24  7F BB EA 14 */	add r29, r27, r29
/* 80489E28  7F A3 EB 78 */	mr r3, r29
/* 80489E2C  4B FF FE FD */	bl aQMgr_actor_check_free_quest
/* 80489E30  2C 03 00 01 */	cmpwi r3, 1
/* 80489E34  40 82 00 10 */	bne lbl_80489E44
/* 80489E38  93 BF 02 00 */	stw r29, 0x200(r31)
/* 80489E3C  7F 98 E3 78 */	mr r24, r28
/* 80489E40  48 00 00 5C */	b lbl_80489E9C
lbl_80489E44:
/* 80489E44  3B 9C 00 01 */	addi r28, r28, 1
/* 80489E48  3B DE 00 58 */	addi r30, r30, 0x58
/* 80489E4C  2C 1C 00 05 */	cmpwi r28, 5
/* 80489E50  41 80 FF D0 */	blt lbl_80489E20
/* 80489E54  48 00 00 48 */	b lbl_80489E9C
lbl_80489E58:
/* 80489E58  4B FF FE D1 */	bl aQMgr_actor_check_free_quest
/* 80489E5C  2C 03 00 01 */	cmpwi r3, 1
/* 80489E60  40 82 00 3C */	bne lbl_80489E9C
/* 80489E64  3B A0 00 00 */	li r29, 0
lbl_80489E68:
/* 80489E68  7F 23 CB 78 */	mr r3, r25
/* 80489E6C  7F C4 F3 78 */	mr r4, r30
/* 80489E70  4B F4 16 01 */	bl mNpc_CheckCmpAnimalPersonalID
/* 80489E74  2C 03 00 01 */	cmpwi r3, 1
/* 80489E78  40 82 00 14 */	bne lbl_80489E8C
/* 80489E7C  38 19 08 A8 */	addi r0, r25, 0x8a8
/* 80489E80  7F B8 EB 78 */	mr r24, r29
/* 80489E84  90 1F 02 00 */	stw r0, 0x200(r31)
/* 80489E88  48 00 00 14 */	b lbl_80489E9C
lbl_80489E8C:
/* 80489E8C  3B BD 00 01 */	addi r29, r29, 1
/* 80489E90  3B 39 09 88 */	addi r25, r25, 0x988
/* 80489E94  2C 1D 00 0F */	cmpwi r29, 0xf
/* 80489E98  41 80 FF D0 */	blt lbl_80489E68
lbl_80489E9C:
/* 80489E9C  93 1F 01 FC */	stw r24, 0x1fc(r31)
/* 80489EA0  39 61 00 30 */	addi r11, r1, 0x30
/* 80489EA4  4B C1 10 69 */	bl func_8009AF0C
/* 80489EA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80489EAC  7C 08 03 A6 */	mtlr r0
/* 80489EB0  38 21 00 30 */	addi r1, r1, 0x30
/* 80489EB4  4E 80 00 20 */	blr 
