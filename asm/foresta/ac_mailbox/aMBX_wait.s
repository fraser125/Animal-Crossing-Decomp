lbl_8042D724:
/* 8042D724  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042D728  7C 08 02 A6 */	mflr r0
/* 8042D72C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042D730  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042D734  7C 7F 1B 78 */	mr r31, r3
/* 8042D738  80 03 01 78 */	lwz r0, 0x178(r3)
/* 8042D73C  2C 00 00 01 */	cmpwi r0, 1
/* 8042D740  40 82 00 40 */	bne lbl_8042D780
/* 8042D744  4B FF FD 45 */	bl aMBX_check_take_mail
/* 8042D748  80 1F 03 1C */	lwz r0, 0x31c(r31)
/* 8042D74C  2C 00 00 02 */	cmpwi r0, 2
/* 8042D750  41 82 00 24 */	beq lbl_8042D774
/* 8042D754  40 80 00 2C */	bge lbl_8042D780
/* 8042D758  2C 00 00 01 */	cmpwi r0, 1
/* 8042D75C  40 80 00 08 */	bge lbl_8042D764
/* 8042D760  48 00 00 20 */	b lbl_8042D780
lbl_8042D764:
/* 8042D764  7F E3 FB 78 */	mr r3, r31
/* 8042D768  38 80 00 02 */	li r4, 2
/* 8042D76C  48 00 02 B9 */	bl aMBX_setupAction
/* 8042D770  48 00 00 10 */	b lbl_8042D780
lbl_8042D774:
/* 8042D774  7F E3 FB 78 */	mr r3, r31
/* 8042D778  38 80 00 01 */	li r4, 1
/* 8042D77C  48 00 02 A9 */	bl aMBX_setupAction
lbl_8042D780:
/* 8042D780  7F E3 FB 78 */	mr r3, r31
/* 8042D784  4B FF FE 49 */	bl aMBX_check_flag
/* 8042D788  80 1F 03 0C */	lwz r0, 0x30c(r31)
/* 8042D78C  2C 00 00 04 */	cmpwi r0, 4
/* 8042D790  40 82 00 20 */	bne lbl_8042D7B0
/* 8042D794  C0 3F 02 58 */	lfs f1, 0x258(r31)
/* 8042D798  C0 1F 02 4C */	lfs f0, 0x24c(r31)
/* 8042D79C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8042D7A0  40 82 00 10 */	bne lbl_8042D7B0
/* 8042D7A4  7F E3 FB 78 */	mr r3, r31
/* 8042D7A8  38 80 00 05 */	li r4, 5
/* 8042D7AC  4B FF FC 4D */	bl aMBX_setup_flag_anime
lbl_8042D7B0:
/* 8042D7B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042D7B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042D7B8  7C 08 03 A6 */	mtlr r0
/* 8042D7BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8042D7C0  4E 80 00 20 */	blr 
