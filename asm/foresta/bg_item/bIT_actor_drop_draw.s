lbl_804BB20C:
/* 804BB20C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BB210  7C 08 02 A6 */	mflr r0
/* 804BB214  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BB218  39 61 00 20 */	addi r11, r1, 0x20
/* 804BB21C  4B BD FC B1 */	bl func_8009AECC
/* 804BB220  7C BD 2B 78 */	mr r29, r5
/* 804BB224  7C 7B 1B 78 */	mr r27, r3
/* 804BB228  83 E5 00 00 */	lwz r31, 0(r5)
/* 804BB22C  7C 9C 23 78 */	mr r28, r4
/* 804BB230  3B C0 00 00 */	li r30, 0
/* 804BB234  48 00 00 2C */	b lbl_804BB260
lbl_804BB238:
/* 804BB238  81 9F 00 04 */	lwz r12, 4(r31)
/* 804BB23C  28 0C 00 00 */	cmplwi r12, 0
/* 804BB240  41 82 00 18 */	beq lbl_804BB258
/* 804BB244  7F 63 DB 78 */	mr r3, r27
/* 804BB248  7F 84 E3 78 */	mr r4, r28
/* 804BB24C  7F E5 FB 78 */	mr r5, r31
/* 804BB250  7D 89 03 A6 */	mtctr r12
/* 804BB254  4E 80 04 21 */	bctrl 
lbl_804BB258:
/* 804BB258  3B DE 00 01 */	addi r30, r30, 1
/* 804BB25C  3B FF 00 A8 */	addi r31, r31, 0xa8
lbl_804BB260:
/* 804BB260  A8 1D 00 04 */	lha r0, 4(r29)
/* 804BB264  7C 1E 00 00 */	cmpw r30, r0
/* 804BB268  41 80 FF D0 */	blt lbl_804BB238
/* 804BB26C  39 61 00 20 */	addi r11, r1, 0x20
/* 804BB270  4B BD FC A9 */	bl func_8009AF18
/* 804BB274  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BB278  7C 08 03 A6 */	mtlr r0
/* 804BB27C  38 21 00 20 */	addi r1, r1, 0x20
/* 804BB280  4E 80 00 20 */	blr 
