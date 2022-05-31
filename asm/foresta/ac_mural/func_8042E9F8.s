lbl_8042E9F8:
/* 8042E9F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8042E9FC  7C 08 02 A6 */	mflr r0
/* 8042EA00  90 01 00 34 */	stw r0, 0x34(r1)
/* 8042EA04  39 61 00 30 */	addi r11, r1, 0x30
/* 8042EA08  4B C6 C4 B5 */	bl func_8009AEBC
/* 8042EA0C  3B A0 00 00 */	li r29, 0
/* 8042EA10  3C A0 81 1D */	lis r5, data_811CBD98@ha /* 0x811CBD98@ha */
/* 8042EA14  3C 80 81 1D */	lis r4, pal@ha /* 0x811CDD98@ha */
/* 8042EA18  7C 77 1B 78 */	mr r23, r3
/* 8042EA1C  7F BC EB 78 */	mr r28, r29
/* 8042EA20  3B 45 BD 98 */	addi r26, r5, data_811CBD98@l /* 0x811CBD98@l */
/* 8042EA24  3B 64 DD 98 */	addi r27, r4, pal@l /* 0x811CDD98@l */
/* 8042EA28  3B 00 00 00 */	li r24, 0
/* 8042EA2C  3B E0 00 00 */	li r31, 0
/* 8042EA30  3B C0 00 00 */	li r30, 0
lbl_8042EA34:
/* 8042EA34  7C 1A EA 14 */	add r0, r26, r29
/* 8042EA38  7F 37 F2 14 */	add r25, r23, r30
/* 8042EA3C  90 19 01 7C */	stw r0, 0x17c(r25)
/* 8042EA40  7C 1B FA 14 */	add r0, r27, r31
/* 8042EA44  7F 05 C3 78 */	mr r5, r24
/* 8042EA48  90 19 01 78 */	stw r0, 0x178(r25)
/* 8042EA4C  80 79 01 7C */	lwz r3, 0x17c(r25)
/* 8042EA50  80 99 01 78 */	lwz r4, 0x178(r25)
/* 8042EA54  4B FA AD 79 */	bl mPlib_Load_PlayerTexAndPallet
/* 8042EA58  3B 18 00 01 */	addi r24, r24, 1
/* 8042EA5C  9B 99 01 74 */	stb r28, 0x174(r25)
/* 8042EA60  2C 18 00 10 */	cmpwi r24, 0x10
/* 8042EA64  3B FF 00 20 */	addi r31, r31, 0x20
/* 8042EA68  3B DE 00 0C */	addi r30, r30, 0xc
/* 8042EA6C  3B BD 02 00 */	addi r29, r29, 0x200
/* 8042EA70  41 80 FF C4 */	blt lbl_8042EA34
/* 8042EA74  39 61 00 30 */	addi r11, r1, 0x30
/* 8042EA78  4B C6 C4 91 */	bl func_8009AF08
/* 8042EA7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8042EA80  7C 08 03 A6 */	mtlr r0
/* 8042EA84  38 21 00 30 */	addi r1, r1, 0x30
/* 8042EA88  4E 80 00 20 */	blr 
