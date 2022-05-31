lbl_8059D74C:
/* 8059D74C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8059D750  7C 08 02 A6 */	mflr r0
/* 8059D754  90 01 00 34 */	stw r0, 0x34(r1)
/* 8059D758  39 61 00 30 */	addi r11, r1, 0x30
/* 8059D75C  4B AF D7 71 */	bl func_8009AECC
/* 8059D760  7C 7B 1B 78 */	mr r27, r3
/* 8059D764  7C 9C 23 78 */	mr r28, r4
/* 8059D768  4B FF FB A9 */	bl aIKR_check_dig_hole_scoop
/* 8059D76C  2C 03 00 01 */	cmpwi r3, 1
/* 8059D770  40 82 00 90 */	bne lbl_8059D800
/* 8059D774  7F 63 DB 78 */	mr r3, r27
/* 8059D778  7F 84 E3 78 */	mr r4, r28
/* 8059D77C  4B FF FA A1 */	bl aIKR_set_avoid_player_angl
/* 8059D780  7F 63 DB 78 */	mr r3, r27
/* 8059D784  7F 85 E3 78 */	mr r5, r28
/* 8059D788  38 80 00 03 */	li r4, 3
/* 8059D78C  48 00 05 E9 */	bl aIKR_setupAction
/* 8059D790  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8059D794  3B A0 00 03 */	li r29, 3
/* 8059D798  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8059D79C  3F E0 00 01 */	lis r31, 0x0001 /* 0x0000FFFF@ha */
/* 8059D7A0  3F C3 00 02 */	addis r30, r3, 2
lbl_8059D7A4:
/* 8059D7A4  80 7B 00 28 */	lwz r3, 0x28(r27)
/* 8059D7A8  63 A0 40 00 */	ori r0, r29, 0x4000
/* 8059D7AC  80 BB 00 2C */	lwz r5, 0x2c(r27)
/* 8059D7B0  7F 87 E3 78 */	mr r7, r28
/* 8059D7B4  80 DE 60 9C */	lwz r6, 0x609c(r30)
/* 8059D7B8  38 81 00 08 */	addi r4, r1, 8
/* 8059D7BC  90 61 00 08 */	stw r3, 8(r1)
/* 8059D7C0  39 1F FF FF */	addi r8, r31, 0xFFFF /* 0x0000FFFF@l */
/* 8059D7C4  7C 0A 07 34 */	extsh r10, r0
/* 8059D7C8  38 60 00 54 */	li r3, 0x54
/* 8059D7CC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8059D7D0  38 A0 00 02 */	li r5, 2
/* 8059D7D4  39 20 00 00 */	li r9, 0
/* 8059D7D8  80 1B 00 30 */	lwz r0, 0x30(r27)
/* 8059D7DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8059D7E0  81 86 00 00 */	lwz r12, 0(r6)
/* 8059D7E4  A8 DB 00 DE */	lha r6, 0xde(r27)
/* 8059D7E8  7D 89 03 A6 */	mtctr r12
/* 8059D7EC  4E 80 04 21 */	bctrl 
/* 8059D7F0  3B BD 00 01 */	addi r29, r29, 1
/* 8059D7F4  2C 1D 00 06 */	cmpwi r29, 6
/* 8059D7F8  41 80 FF AC */	blt lbl_8059D7A4
/* 8059D7FC  48 00 00 14 */	b lbl_8059D810
lbl_8059D800:
/* 8059D800  7F 63 DB 78 */	mr r3, r27
/* 8059D804  38 BB 00 28 */	addi r5, r27, 0x28
/* 8059D808  38 80 00 44 */	li r4, 0x44
/* 8059D80C  48 09 07 39 */	bl sAdo_OngenPos
lbl_8059D810:
/* 8059D810  39 61 00 30 */	addi r11, r1, 0x30
/* 8059D814  4B AF D7 05 */	bl func_8009AF18
/* 8059D818  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8059D81C  7C 08 03 A6 */	mtlr r0
/* 8059D820  38 21 00 30 */	addi r1, r1, 0x30
/* 8059D824  4E 80 00 20 */	blr 
