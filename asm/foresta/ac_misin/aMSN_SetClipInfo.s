lbl_8042E0DC:
/* 8042E0DC  38 C3 0B 10 */	addi r6, r3, 0xb10
/* 8042E0E0  3C 80 80 43 */	lis r4, aMSN_RequestMisinStop@ha /* 0x8042DFF4@ha */
/* 8042E0E4  90 63 0B 10 */	stw r3, 0xb10(r3)
/* 8042E0E8  38 04 DF F4 */	addi r0, r4, aMSN_RequestMisinStop@l /* 0x8042DFF4@l */
/* 8042E0EC  3C 60 80 43 */	lis r3, aMSN_ReqeustMisinMove@ha /* 0x8042E018@ha */
/* 8042E0F0  3C A0 80 43 */	lis r5, aMSN_RequestDustclothStop@ha /* 0x8042DE28@ha */
/* 8042E0F4  90 06 00 04 */	stw r0, 4(r6)
/* 8042E0F8  38 03 E0 18 */	addi r0, r3, aMSN_ReqeustMisinMove@l /* 0x8042E018@l */
/* 8042E0FC  3C 80 80 43 */	lis r4, aMSN_RequestDustclothMove@ha /* 0x8042DE04@ha */
/* 8042E100  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8042E104  90 06 00 08 */	stw r0, 8(r6)
/* 8042E108  38 A5 DE 28 */	addi r5, r5, aMSN_RequestDustclothStop@l /* 0x8042DE28@l */
/* 8042E10C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8042E110  38 04 DE 04 */	addi r0, r4, aMSN_RequestDustclothMove@l /* 0x8042DE04@l */
/* 8042E114  90 A6 00 0C */	stw r5, 0xc(r6)
/* 8042E118  3C 63 00 02 */	addis r3, r3, 2
/* 8042E11C  90 06 00 10 */	stw r0, 0x10(r6)
/* 8042E120  90 C3 60 34 */	stw r6, 0x6034(r3)
/* 8042E124  4E 80 00 20 */	blr 
