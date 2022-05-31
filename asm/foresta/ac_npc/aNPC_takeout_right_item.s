lbl_8052DA14:
/* 8052DA14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8052DA18  7C 08 02 A6 */	mflr r0
/* 8052DA1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8052DA20  39 61 00 30 */	addi r11, r1, 0x30
/* 8052DA24  4B B6 D4 A5 */	bl func_8009AEC8
/* 8052DA28  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8052DA2C  3C A0 80 6A */	lis r5, data_806A1400@ha /* 0x806A1400@ha */
/* 8052DA30  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8052DA34  7C 7F 1B 78 */	mr r31, r3
/* 8052DA38  3C 64 00 02 */	addis r3, r4, 2
/* 8052DA3C  3B A5 14 00 */	addi r29, r5, data_806A1400@l /* 0x806A1400@l */
/* 8052DA40  80 A3 60 A0 */	lwz r5, 0x60a0(r3)
/* 8052DA44  3B 80 00 01 */	li r28, 1
/* 8052DA48  28 05 00 00 */	cmplwi r5, 0
/* 8052DA4C  41 82 00 FC */	beq lbl_8052DB48
/* 8052DA50  8B 7F 08 99 */	lbz r27, 0x899(r31)
/* 8052DA54  3B 40 00 01 */	li r26, 1
/* 8052DA58  2C 1B 00 01 */	cmpwi r27, 1
/* 8052DA5C  40 82 00 38 */	bne lbl_8052DA94
/* 8052DA60  88 1F 08 33 */	lbz r0, 0x833(r31)
/* 8052DA64  28 00 00 00 */	cmplwi r0, 0
/* 8052DA68  41 82 00 0C */	beq lbl_8052DA74
/* 8052DA6C  38 60 00 01 */	li r3, 1
/* 8052DA70  48 00 00 DC */	b lbl_8052DB4C
lbl_8052DA74:
/* 8052DA74  88 1F 08 18 */	lbz r0, 0x818(r31)
/* 8052DA78  88 7F 08 9F */	lbz r3, 0x89f(r31)
/* 8052DA7C  28 00 00 01 */	cmplwi r0, 1
/* 8052DA80  40 82 00 0C */	bne lbl_8052DA8C
/* 8052DA84  3B 40 00 04 */	li r26, 4
/* 8052DA88  48 00 00 1C */	b lbl_8052DAA4
lbl_8052DA8C:
/* 8052DA8C  3B 40 00 00 */	li r26, 0
/* 8052DA90  48 00 00 14 */	b lbl_8052DAA4
lbl_8052DA94:
/* 8052DA94  38 7D 0A 90 */	addi r3, r29, 0xa90
/* 8052DA98  57 60 10 3A */	slwi r0, r27, 2
/* 8052DA9C  7C 63 02 14 */	add r3, r3, r0
/* 8052DAA0  80 63 FF FC */	lwz r3, -4(r3)
lbl_8052DAA4:
/* 8052DAA4  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8052DAA8  81 85 00 00 */	lwz r12, 0(r5)
/* 8052DAAC  38 C4 52 F0 */	addi r6, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 8052DAB0  7F E5 FB 78 */	mr r5, r31
/* 8052DAB4  7F 44 D3 78 */	mr r4, r26
/* 8052DAB8  39 01 00 08 */	addi r8, r1, 8
/* 8052DABC  80 C6 00 00 */	lwz r6, 0(r6)
/* 8052DAC0  38 E0 FF FF */	li r7, -1
/* 8052DAC4  7D 89 03 A6 */	mtctr r12
/* 8052DAC8  4E 80 04 21 */	bctrl 
/* 8052DACC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8052DAD0  40 82 00 28 */	bne lbl_8052DAF8
/* 8052DAD4  80 01 00 08 */	lwz r0, 8(r1)
/* 8052DAD8  2C 00 FF FF */	cmpwi r0, -1
/* 8052DADC  41 82 00 6C */	beq lbl_8052DB48
/* 8052DAE0  88 1F 08 18 */	lbz r0, 0x818(r31)
/* 8052DAE4  28 00 00 01 */	cmplwi r0, 1
/* 8052DAE8  40 82 00 60 */	bne lbl_8052DB48
/* 8052DAEC  38 00 00 00 */	li r0, 0
/* 8052DAF0  98 1F 08 18 */	stb r0, 0x818(r31)
/* 8052DAF4  48 00 00 54 */	b lbl_8052DB48
lbl_8052DAF8:
/* 8052DAF8  9B 7F 08 98 */	stb r27, 0x898(r31)
/* 8052DAFC  38 00 00 00 */	li r0, 0
/* 8052DB00  2C 1A 00 04 */	cmpwi r26, 4
/* 8052DB04  98 1F 08 99 */	stb r0, 0x899(r31)
/* 8052DB08  93 DF 08 A0 */	stw r30, 0x8a0(r31)
/* 8052DB0C  40 82 00 0C */	bne lbl_8052DB18
/* 8052DB10  38 00 00 01 */	li r0, 1
/* 8052DB14  98 1F 07 51 */	stb r0, 0x751(r31)
lbl_8052DB18:
/* 8052DB18  38 1D 0A 8C */	addi r0, r29, 0xa8c
/* 8052DB1C  7F E3 FB 78 */	mr r3, r31
/* 8052DB20  7C 80 DA 14 */	add r4, r0, r27
/* 8052DB24  38 FD 00 00 */	addi r7, r29, 0
/* 8052DB28  88 A4 FF FF */	lbz r5, -1(r4)
/* 8052DB2C  38 80 00 04 */	li r4, 4
/* 8052DB30  38 C0 00 00 */	li r6, 0
/* 8052DB34  48 00 3A C9 */	bl aNPC_set_request_act
/* 8052DB38  38 7E 00 28 */	addi r3, r30, 0x28
/* 8052DB3C  38 9F 00 28 */	addi r4, r31, 0x28
/* 8052DB40  4B E8 D3 7D */	bl xyz_t_move
/* 8052DB44  3B 80 00 00 */	li r28, 0
lbl_8052DB48:
/* 8052DB48  7F 83 E3 78 */	mr r3, r28
lbl_8052DB4C:
/* 8052DB4C  39 61 00 30 */	addi r11, r1, 0x30
/* 8052DB50  4B B6 D3 C5 */	bl func_8009AF14
/* 8052DB54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8052DB58  7C 08 03 A6 */	mtlr r0
/* 8052DB5C  38 21 00 30 */	addi r1, r1, 0x30
/* 8052DB60  4E 80 00 20 */	blr 
