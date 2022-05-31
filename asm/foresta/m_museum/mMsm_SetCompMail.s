lbl_803C72AC:
/* 803C72AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C72B0  7C 08 02 A6 */	mflr r0
/* 803C72B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C72B8  4B FF FF 15 */	bl mMsm_CheckSendCompMail
/* 803C72BC  2C 03 00 00 */	cmpwi r3, 0
/* 803C72C0  40 82 00 38 */	bne lbl_803C72F8
/* 803C72C4  48 00 0B 65 */	bl mMmd_CountDisplayedFossil
/* 803C72C8  2C 03 00 19 */	cmpwi r3, 0x19
/* 803C72CC  40 82 00 2C */	bne lbl_803C72F8
/* 803C72D0  48 00 0B B9 */	bl mMmd_CountDisplayedArt
/* 803C72D4  2C 03 00 0F */	cmpwi r3, 0xf
/* 803C72D8  40 82 00 20 */	bne lbl_803C72F8
/* 803C72DC  48 00 0C 0D */	bl mMmd_CountDisplayedInsect
/* 803C72E0  2C 03 00 28 */	cmpwi r3, 0x28
/* 803C72E4  40 82 00 14 */	bne lbl_803C72F8
/* 803C72E8  48 00 0C 61 */	bl mMmd_CountDisplayedFish
/* 803C72EC  2C 03 00 28 */	cmpwi r3, 0x28
/* 803C72F0  40 82 00 08 */	bne lbl_803C72F8
/* 803C72F4  4B FF FF 51 */	bl mMsm_SetSendCompMail
lbl_803C72F8:
/* 803C72F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C72FC  7C 08 03 A6 */	mtlr r0
/* 803C7300  38 21 00 10 */	addi r1, r1, 0x10
/* 803C7304  4E 80 00 20 */	blr 
