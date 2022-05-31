lbl_804DB2F0:
/* 804DB2F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DB2F4  7C 08 02 A6 */	mflr r0
/* 804DB2F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DB2FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DB300  7C DF 33 78 */	mr r31, r6
/* 804DB304  93 C1 00 08 */	stw r30, 8(r1)
/* 804DB308  7C 7E 1B 78 */	mr r30, r3
/* 804DB30C  4B FF FE 29 */	bl Player_actor_Set_FootMark_MarkOnly
/* 804DB310  2C 1F 00 00 */	cmpwi r31, 0
/* 804DB314  7C 7F 1B 78 */	mr r31, r3
/* 804DB318  40 82 00 24 */	bne lbl_804DB33C
/* 804DB31C  7F C3 F3 78 */	mr r3, r30
/* 804DB320  4B FF FF A5 */	bl Player_actor_CheckAble_FootMark_Sound
/* 804DB324  2C 03 00 00 */	cmpwi r3, 0
/* 804DB328  41 82 00 14 */	beq lbl_804DB33C
/* 804DB32C  2C 1F 00 00 */	cmpwi r31, 0
/* 804DB330  41 82 00 0C */	beq lbl_804DB33C
/* 804DB334  7F C3 F3 78 */	mr r3, r30
/* 804DB338  48 00 3F F5 */	bl Player_actor_sound_FootStep2
lbl_804DB33C:
/* 804DB33C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DB340  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DB344  83 C1 00 08 */	lwz r30, 8(r1)
/* 804DB348  7C 08 03 A6 */	mtlr r0
/* 804DB34C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DB350  4E 80 00 20 */	blr 
