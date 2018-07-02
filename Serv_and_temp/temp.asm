
temp.elf:     file format elf32-littlearm

Sections:
Idx Name          Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector   000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text         00001ac0  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata       00000008  08001b80  08001b80  00011b80  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array   00000008  08001b88  08001b88  00011b88  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array   00000004  08001b90  08001b90  00011b90  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data         00000470  20000000  08001b94  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss          000000cc  20000470  08002004  00020470  2**2  ALLOC
  7 ._user_heap_stack 00000604  2000053c  08002004  0002053c  2**0  ALLOC
  8 .ARM.attributes 00000028  00000000  00000000  00020470  2**0  CONTENTS, READONLY
  9 .comment      00000070  00000000  00000000  00020498  2**0  CONTENTS, READONLY
 10 .debug_info   00004335  00000000  00000000  00020508  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_abbrev 00000e09  00000000  00000000  0002483d  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges 000003e8  00000000  00000000  00025648  2**3  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges 00000320  00000000  00000000  00025a30  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line   00001551  00000000  00000000  00025d50  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str    00001818  00000000  00000000  000272a1  2**0  CONTENTS, READONLY, DEBUGGING
 16 .debug_frame  00000b60  00000000  00000000  00028abc  2**2  CONTENTS, READONLY, DEBUGGING
 17 .debug_loc    00000485  00000000  00000000  0002961c  2**0  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

080000c0 <deregister_tm_clones>:
 80000c0:	b508      	push	{r3, lr}
 80000c2:	4b05      	ldr	r3, [pc, #20]	; (80000d8 <deregister_tm_clones+0x18>)
 80000c4:	4805      	ldr	r0, [pc, #20]	; (80000dc <deregister_tm_clones+0x1c>)
 80000c6:	3303      	adds	r3, #3
 80000c8:	1a1b      	subs	r3, r3, r0
 80000ca:	2b06      	cmp	r3, #6
 80000cc:	d903      	bls.n	80000d6 <deregister_tm_clones+0x16>
 80000ce:	4b04      	ldr	r3, [pc, #16]	; (80000e0 <deregister_tm_clones+0x20>)
 80000d0:	2b00      	cmp	r3, #0
 80000d2:	d000      	beq.n	80000d6 <deregister_tm_clones+0x16>
 80000d4:	4798      	blx	r3
 80000d6:	bd08      	pop	{r3, pc}
 80000d8:	20000470 	.word	0x20000470
 80000dc:	20000470 	.word	0x20000470
 80000e0:	00000000 	.word	0x00000000

080000e4 <register_tm_clones>:
 80000e4:	4806      	ldr	r0, [pc, #24]	; (8000100 <register_tm_clones+0x1c>)
 80000e6:	4907      	ldr	r1, [pc, #28]	; (8000104 <register_tm_clones+0x20>)
 80000e8:	b508      	push	{r3, lr}
 80000ea:	1a09      	subs	r1, r1, r0
 80000ec:	1089      	asrs	r1, r1, #2
 80000ee:	0fcb      	lsrs	r3, r1, #31
 80000f0:	1859      	adds	r1, r3, r1
 80000f2:	1049      	asrs	r1, r1, #1
 80000f4:	d003      	beq.n	80000fe <register_tm_clones+0x1a>
 80000f6:	4b04      	ldr	r3, [pc, #16]	; (8000108 <register_tm_clones+0x24>)
 80000f8:	2b00      	cmp	r3, #0
 80000fa:	d000      	beq.n	80000fe <register_tm_clones+0x1a>
 80000fc:	4798      	blx	r3
 80000fe:	bd08      	pop	{r3, pc}
 8000100:	20000470 	.word	0x20000470
 8000104:	20000470 	.word	0x20000470
 8000108:	00000000 	.word	0x00000000

0800010c <__do_global_dtors_aux>:
 800010c:	b510      	push	{r4, lr}
 800010e:	4c07      	ldr	r4, [pc, #28]	; (800012c <__do_global_dtors_aux+0x20>)
 8000110:	7823      	ldrb	r3, [r4, #0]
 8000112:	2b00      	cmp	r3, #0
 8000114:	d109      	bne.n	800012a <__do_global_dtors_aux+0x1e>
 8000116:	f7ff ffd3 	bl	80000c0 <deregister_tm_clones>
 800011a:	4b05      	ldr	r3, [pc, #20]	; (8000130 <__do_global_dtors_aux+0x24>)
 800011c:	2b00      	cmp	r3, #0
 800011e:	d002      	beq.n	8000126 <__do_global_dtors_aux+0x1a>
 8000120:	4804      	ldr	r0, [pc, #16]	; (8000134 <__do_global_dtors_aux+0x28>)
 8000122:	e000      	b.n	8000126 <__do_global_dtors_aux+0x1a>
 8000124:	bf00      	nop
 8000126:	2301      	movs	r3, #1
 8000128:	7023      	strb	r3, [r4, #0]
 800012a:	bd10      	pop	{r4, pc}
 800012c:	20000470 	.word	0x20000470
 8000130:	00000000 	.word	0x00000000
 8000134:	08001b68 	.word	0x08001b68

08000138 <frame_dummy>:
 8000138:	b508      	push	{r3, lr}
 800013a:	4b09      	ldr	r3, [pc, #36]	; (8000160 <frame_dummy+0x28>)
 800013c:	2b00      	cmp	r3, #0
 800013e:	d003      	beq.n	8000148 <frame_dummy+0x10>
 8000140:	4808      	ldr	r0, [pc, #32]	; (8000164 <frame_dummy+0x2c>)
 8000142:	4909      	ldr	r1, [pc, #36]	; (8000168 <frame_dummy+0x30>)
 8000144:	e000      	b.n	8000148 <frame_dummy+0x10>
 8000146:	bf00      	nop
 8000148:	4808      	ldr	r0, [pc, #32]	; (800016c <frame_dummy+0x34>)
 800014a:	6803      	ldr	r3, [r0, #0]
 800014c:	2b00      	cmp	r3, #0
 800014e:	d102      	bne.n	8000156 <frame_dummy+0x1e>
 8000150:	f7ff ffc8 	bl	80000e4 <register_tm_clones>
 8000154:	bd08      	pop	{r3, pc}
 8000156:	4b06      	ldr	r3, [pc, #24]	; (8000170 <frame_dummy+0x38>)
 8000158:	2b00      	cmp	r3, #0
 800015a:	d0f9      	beq.n	8000150 <frame_dummy+0x18>
 800015c:	4798      	blx	r3
 800015e:	e7f7      	b.n	8000150 <frame_dummy+0x18>
 8000160:	00000000 	.word	0x00000000
 8000164:	08001b68 	.word	0x08001b68
 8000168:	20000474 	.word	0x20000474
 800016c:	20000470 	.word	0x20000470
 8000170:	00000000 	.word	0x00000000

08000174 <__aeabi_uidiv>:
 8000174:	2200      	movs	r2, #0
 8000176:	0843      	lsrs	r3, r0, #1
 8000178:	428b      	cmp	r3, r1
 800017a:	d374      	bcc.n	8000266 <__aeabi_uidiv+0xf2>
 800017c:	0903      	lsrs	r3, r0, #4
 800017e:	428b      	cmp	r3, r1
 8000180:	d35f      	bcc.n	8000242 <__aeabi_uidiv+0xce>
 8000182:	0a03      	lsrs	r3, r0, #8
 8000184:	428b      	cmp	r3, r1
 8000186:	d344      	bcc.n	8000212 <__aeabi_uidiv+0x9e>
 8000188:	0b03      	lsrs	r3, r0, #12
 800018a:	428b      	cmp	r3, r1
 800018c:	d328      	bcc.n	80001e0 <__aeabi_uidiv+0x6c>
 800018e:	0c03      	lsrs	r3, r0, #16
 8000190:	428b      	cmp	r3, r1
 8000192:	d30d      	bcc.n	80001b0 <__aeabi_uidiv+0x3c>
 8000194:	22ff      	movs	r2, #255	; 0xff
 8000196:	0209      	lsls	r1, r1, #8
 8000198:	ba12      	rev	r2, r2
 800019a:	0c03      	lsrs	r3, r0, #16
 800019c:	428b      	cmp	r3, r1
 800019e:	d302      	bcc.n	80001a6 <__aeabi_uidiv+0x32>
 80001a0:	1212      	asrs	r2, r2, #8
 80001a2:	0209      	lsls	r1, r1, #8
 80001a4:	d065      	beq.n	8000272 <__aeabi_uidiv+0xfe>
 80001a6:	0b03      	lsrs	r3, r0, #12
 80001a8:	428b      	cmp	r3, r1
 80001aa:	d319      	bcc.n	80001e0 <__aeabi_uidiv+0x6c>
 80001ac:	e000      	b.n	80001b0 <__aeabi_uidiv+0x3c>
 80001ae:	0a09      	lsrs	r1, r1, #8
 80001b0:	0bc3      	lsrs	r3, r0, #15
 80001b2:	428b      	cmp	r3, r1
 80001b4:	d301      	bcc.n	80001ba <__aeabi_uidiv+0x46>
 80001b6:	03cb      	lsls	r3, r1, #15
 80001b8:	1ac0      	subs	r0, r0, r3
 80001ba:	4152      	adcs	r2, r2
 80001bc:	0b83      	lsrs	r3, r0, #14
 80001be:	428b      	cmp	r3, r1
 80001c0:	d301      	bcc.n	80001c6 <__aeabi_uidiv+0x52>
 80001c2:	038b      	lsls	r3, r1, #14
 80001c4:	1ac0      	subs	r0, r0, r3
 80001c6:	4152      	adcs	r2, r2
 80001c8:	0b43      	lsrs	r3, r0, #13
 80001ca:	428b      	cmp	r3, r1
 80001cc:	d301      	bcc.n	80001d2 <__aeabi_uidiv+0x5e>
 80001ce:	034b      	lsls	r3, r1, #13
 80001d0:	1ac0      	subs	r0, r0, r3
 80001d2:	4152      	adcs	r2, r2
 80001d4:	0b03      	lsrs	r3, r0, #12
 80001d6:	428b      	cmp	r3, r1
 80001d8:	d301      	bcc.n	80001de <__aeabi_uidiv+0x6a>
 80001da:	030b      	lsls	r3, r1, #12
 80001dc:	1ac0      	subs	r0, r0, r3
 80001de:	4152      	adcs	r2, r2
 80001e0:	0ac3      	lsrs	r3, r0, #11
 80001e2:	428b      	cmp	r3, r1
 80001e4:	d301      	bcc.n	80001ea <__aeabi_uidiv+0x76>
 80001e6:	02cb      	lsls	r3, r1, #11
 80001e8:	1ac0      	subs	r0, r0, r3
 80001ea:	4152      	adcs	r2, r2
 80001ec:	0a83      	lsrs	r3, r0, #10
 80001ee:	428b      	cmp	r3, r1
 80001f0:	d301      	bcc.n	80001f6 <__aeabi_uidiv+0x82>
 80001f2:	028b      	lsls	r3, r1, #10
 80001f4:	1ac0      	subs	r0, r0, r3
 80001f6:	4152      	adcs	r2, r2
 80001f8:	0a43      	lsrs	r3, r0, #9
 80001fa:	428b      	cmp	r3, r1
 80001fc:	d301      	bcc.n	8000202 <__aeabi_uidiv+0x8e>
 80001fe:	024b      	lsls	r3, r1, #9
 8000200:	1ac0      	subs	r0, r0, r3
 8000202:	4152      	adcs	r2, r2
 8000204:	0a03      	lsrs	r3, r0, #8
 8000206:	428b      	cmp	r3, r1
 8000208:	d301      	bcc.n	800020e <__aeabi_uidiv+0x9a>
 800020a:	020b      	lsls	r3, r1, #8
 800020c:	1ac0      	subs	r0, r0, r3
 800020e:	4152      	adcs	r2, r2
 8000210:	d2cd      	bcs.n	80001ae <__aeabi_uidiv+0x3a>
 8000212:	09c3      	lsrs	r3, r0, #7
 8000214:	428b      	cmp	r3, r1
 8000216:	d301      	bcc.n	800021c <__aeabi_uidiv+0xa8>
 8000218:	01cb      	lsls	r3, r1, #7
 800021a:	1ac0      	subs	r0, r0, r3
 800021c:	4152      	adcs	r2, r2
 800021e:	0983      	lsrs	r3, r0, #6
 8000220:	428b      	cmp	r3, r1
 8000222:	d301      	bcc.n	8000228 <__aeabi_uidiv+0xb4>
 8000224:	018b      	lsls	r3, r1, #6
 8000226:	1ac0      	subs	r0, r0, r3
 8000228:	4152      	adcs	r2, r2
 800022a:	0943      	lsrs	r3, r0, #5
 800022c:	428b      	cmp	r3, r1
 800022e:	d301      	bcc.n	8000234 <__aeabi_uidiv+0xc0>
 8000230:	014b      	lsls	r3, r1, #5
 8000232:	1ac0      	subs	r0, r0, r3
 8000234:	4152      	adcs	r2, r2
 8000236:	0903      	lsrs	r3, r0, #4
 8000238:	428b      	cmp	r3, r1
 800023a:	d301      	bcc.n	8000240 <__aeabi_uidiv+0xcc>
 800023c:	010b      	lsls	r3, r1, #4
 800023e:	1ac0      	subs	r0, r0, r3
 8000240:	4152      	adcs	r2, r2
 8000242:	08c3      	lsrs	r3, r0, #3
 8000244:	428b      	cmp	r3, r1
 8000246:	d301      	bcc.n	800024c <__aeabi_uidiv+0xd8>
 8000248:	00cb      	lsls	r3, r1, #3
 800024a:	1ac0      	subs	r0, r0, r3
 800024c:	4152      	adcs	r2, r2
 800024e:	0883      	lsrs	r3, r0, #2
 8000250:	428b      	cmp	r3, r1
 8000252:	d301      	bcc.n	8000258 <__aeabi_uidiv+0xe4>
 8000254:	008b      	lsls	r3, r1, #2
 8000256:	1ac0      	subs	r0, r0, r3
 8000258:	4152      	adcs	r2, r2
 800025a:	0843      	lsrs	r3, r0, #1
 800025c:	428b      	cmp	r3, r1
 800025e:	d301      	bcc.n	8000264 <__aeabi_uidiv+0xf0>
 8000260:	004b      	lsls	r3, r1, #1
 8000262:	1ac0      	subs	r0, r0, r3
 8000264:	4152      	adcs	r2, r2
 8000266:	1a41      	subs	r1, r0, r1
 8000268:	d200      	bcs.n	800026c <__aeabi_uidiv+0xf8>
 800026a:	4601      	mov	r1, r0
 800026c:	4152      	adcs	r2, r2
 800026e:	4610      	mov	r0, r2
 8000270:	4770      	bx	lr
 8000272:	e7ff      	b.n	8000274 <__aeabi_uidiv+0x100>
 8000274:	b501      	push	{r0, lr}
 8000276:	2000      	movs	r0, #0
 8000278:	f000 f8fc 	bl	8000474 <__aeabi_idiv0>
 800027c:	bd02      	pop	{r1, pc}
 800027e:	46c0      	nop			; (mov r8, r8)

08000280 <__aeabi_uidivmod>:
 8000280:	2900      	cmp	r1, #0
 8000282:	d0f7      	beq.n	8000274 <__aeabi_uidiv+0x100>
 8000284:	b503      	push	{r0, r1, lr}
 8000286:	f7ff ff75 	bl	8000174 <__aeabi_uidiv>
 800028a:	bc0e      	pop	{r1, r2, r3}
 800028c:	4342      	muls	r2, r0
 800028e:	1a89      	subs	r1, r1, r2
 8000290:	4718      	bx	r3
 8000292:	46c0      	nop			; (mov r8, r8)

08000294 <__aeabi_idiv>:
 8000294:	4603      	mov	r3, r0
 8000296:	430b      	orrs	r3, r1
 8000298:	d47f      	bmi.n	800039a <__aeabi_idiv+0x106>
 800029a:	2200      	movs	r2, #0
 800029c:	0843      	lsrs	r3, r0, #1
 800029e:	428b      	cmp	r3, r1
 80002a0:	d374      	bcc.n	800038c <__aeabi_idiv+0xf8>
 80002a2:	0903      	lsrs	r3, r0, #4
 80002a4:	428b      	cmp	r3, r1
 80002a6:	d35f      	bcc.n	8000368 <__aeabi_idiv+0xd4>
 80002a8:	0a03      	lsrs	r3, r0, #8
 80002aa:	428b      	cmp	r3, r1
 80002ac:	d344      	bcc.n	8000338 <__aeabi_idiv+0xa4>
 80002ae:	0b03      	lsrs	r3, r0, #12
 80002b0:	428b      	cmp	r3, r1
 80002b2:	d328      	bcc.n	8000306 <__aeabi_idiv+0x72>
 80002b4:	0c03      	lsrs	r3, r0, #16
 80002b6:	428b      	cmp	r3, r1
 80002b8:	d30d      	bcc.n	80002d6 <__aeabi_idiv+0x42>
 80002ba:	22ff      	movs	r2, #255	; 0xff
 80002bc:	0209      	lsls	r1, r1, #8
 80002be:	ba12      	rev	r2, r2
 80002c0:	0c03      	lsrs	r3, r0, #16
 80002c2:	428b      	cmp	r3, r1
 80002c4:	d302      	bcc.n	80002cc <__aeabi_idiv+0x38>
 80002c6:	1212      	asrs	r2, r2, #8
 80002c8:	0209      	lsls	r1, r1, #8
 80002ca:	d065      	beq.n	8000398 <__aeabi_idiv+0x104>
 80002cc:	0b03      	lsrs	r3, r0, #12
 80002ce:	428b      	cmp	r3, r1
 80002d0:	d319      	bcc.n	8000306 <__aeabi_idiv+0x72>
 80002d2:	e000      	b.n	80002d6 <__aeabi_idiv+0x42>
 80002d4:	0a09      	lsrs	r1, r1, #8
 80002d6:	0bc3      	lsrs	r3, r0, #15
 80002d8:	428b      	cmp	r3, r1
 80002da:	d301      	bcc.n	80002e0 <__aeabi_idiv+0x4c>
 80002dc:	03cb      	lsls	r3, r1, #15
 80002de:	1ac0      	subs	r0, r0, r3
 80002e0:	4152      	adcs	r2, r2
 80002e2:	0b83      	lsrs	r3, r0, #14
 80002e4:	428b      	cmp	r3, r1
 80002e6:	d301      	bcc.n	80002ec <__aeabi_idiv+0x58>
 80002e8:	038b      	lsls	r3, r1, #14
 80002ea:	1ac0      	subs	r0, r0, r3
 80002ec:	4152      	adcs	r2, r2
 80002ee:	0b43      	lsrs	r3, r0, #13
 80002f0:	428b      	cmp	r3, r1
 80002f2:	d301      	bcc.n	80002f8 <__aeabi_idiv+0x64>
 80002f4:	034b      	lsls	r3, r1, #13
 80002f6:	1ac0      	subs	r0, r0, r3
 80002f8:	4152      	adcs	r2, r2
 80002fa:	0b03      	lsrs	r3, r0, #12
 80002fc:	428b      	cmp	r3, r1
 80002fe:	d301      	bcc.n	8000304 <__aeabi_idiv+0x70>
 8000300:	030b      	lsls	r3, r1, #12
 8000302:	1ac0      	subs	r0, r0, r3
 8000304:	4152      	adcs	r2, r2
 8000306:	0ac3      	lsrs	r3, r0, #11
 8000308:	428b      	cmp	r3, r1
 800030a:	d301      	bcc.n	8000310 <__aeabi_idiv+0x7c>
 800030c:	02cb      	lsls	r3, r1, #11
 800030e:	1ac0      	subs	r0, r0, r3
 8000310:	4152      	adcs	r2, r2
 8000312:	0a83      	lsrs	r3, r0, #10
 8000314:	428b      	cmp	r3, r1
 8000316:	d301      	bcc.n	800031c <__aeabi_idiv+0x88>
 8000318:	028b      	lsls	r3, r1, #10
 800031a:	1ac0      	subs	r0, r0, r3
 800031c:	4152      	adcs	r2, r2
 800031e:	0a43      	lsrs	r3, r0, #9
 8000320:	428b      	cmp	r3, r1
 8000322:	d301      	bcc.n	8000328 <__aeabi_idiv+0x94>
 8000324:	024b      	lsls	r3, r1, #9
 8000326:	1ac0      	subs	r0, r0, r3
 8000328:	4152      	adcs	r2, r2
 800032a:	0a03      	lsrs	r3, r0, #8
 800032c:	428b      	cmp	r3, r1
 800032e:	d301      	bcc.n	8000334 <__aeabi_idiv+0xa0>
 8000330:	020b      	lsls	r3, r1, #8
 8000332:	1ac0      	subs	r0, r0, r3
 8000334:	4152      	adcs	r2, r2
 8000336:	d2cd      	bcs.n	80002d4 <__aeabi_idiv+0x40>
 8000338:	09c3      	lsrs	r3, r0, #7
 800033a:	428b      	cmp	r3, r1
 800033c:	d301      	bcc.n	8000342 <__aeabi_idiv+0xae>
 800033e:	01cb      	lsls	r3, r1, #7
 8000340:	1ac0      	subs	r0, r0, r3
 8000342:	4152      	adcs	r2, r2
 8000344:	0983      	lsrs	r3, r0, #6
 8000346:	428b      	cmp	r3, r1
 8000348:	d301      	bcc.n	800034e <__aeabi_idiv+0xba>
 800034a:	018b      	lsls	r3, r1, #6
 800034c:	1ac0      	subs	r0, r0, r3
 800034e:	4152      	adcs	r2, r2
 8000350:	0943      	lsrs	r3, r0, #5
 8000352:	428b      	cmp	r3, r1
 8000354:	d301      	bcc.n	800035a <__aeabi_idiv+0xc6>
 8000356:	014b      	lsls	r3, r1, #5
 8000358:	1ac0      	subs	r0, r0, r3
 800035a:	4152      	adcs	r2, r2
 800035c:	0903      	lsrs	r3, r0, #4
 800035e:	428b      	cmp	r3, r1
 8000360:	d301      	bcc.n	8000366 <__aeabi_idiv+0xd2>
 8000362:	010b      	lsls	r3, r1, #4
 8000364:	1ac0      	subs	r0, r0, r3
 8000366:	4152      	adcs	r2, r2
 8000368:	08c3      	lsrs	r3, r0, #3
 800036a:	428b      	cmp	r3, r1
 800036c:	d301      	bcc.n	8000372 <__aeabi_idiv+0xde>
 800036e:	00cb      	lsls	r3, r1, #3
 8000370:	1ac0      	subs	r0, r0, r3
 8000372:	4152      	adcs	r2, r2
 8000374:	0883      	lsrs	r3, r0, #2
 8000376:	428b      	cmp	r3, r1
 8000378:	d301      	bcc.n	800037e <__aeabi_idiv+0xea>
 800037a:	008b      	lsls	r3, r1, #2
 800037c:	1ac0      	subs	r0, r0, r3
 800037e:	4152      	adcs	r2, r2
 8000380:	0843      	lsrs	r3, r0, #1
 8000382:	428b      	cmp	r3, r1
 8000384:	d301      	bcc.n	800038a <__aeabi_idiv+0xf6>
 8000386:	004b      	lsls	r3, r1, #1
 8000388:	1ac0      	subs	r0, r0, r3
 800038a:	4152      	adcs	r2, r2
 800038c:	1a41      	subs	r1, r0, r1
 800038e:	d200      	bcs.n	8000392 <__aeabi_idiv+0xfe>
 8000390:	4601      	mov	r1, r0
 8000392:	4152      	adcs	r2, r2
 8000394:	4610      	mov	r0, r2
 8000396:	4770      	bx	lr
 8000398:	e05d      	b.n	8000456 <__aeabi_idiv+0x1c2>
 800039a:	0fca      	lsrs	r2, r1, #31
 800039c:	d000      	beq.n	80003a0 <__aeabi_idiv+0x10c>
 800039e:	4249      	negs	r1, r1
 80003a0:	1003      	asrs	r3, r0, #32
 80003a2:	d300      	bcc.n	80003a6 <__aeabi_idiv+0x112>
 80003a4:	4240      	negs	r0, r0
 80003a6:	4053      	eors	r3, r2
 80003a8:	2200      	movs	r2, #0
 80003aa:	469c      	mov	ip, r3
 80003ac:	0903      	lsrs	r3, r0, #4
 80003ae:	428b      	cmp	r3, r1
 80003b0:	d32d      	bcc.n	800040e <__aeabi_idiv+0x17a>
 80003b2:	0a03      	lsrs	r3, r0, #8
 80003b4:	428b      	cmp	r3, r1
 80003b6:	d312      	bcc.n	80003de <__aeabi_idiv+0x14a>
 80003b8:	22fc      	movs	r2, #252	; 0xfc
 80003ba:	0189      	lsls	r1, r1, #6
 80003bc:	ba12      	rev	r2, r2
 80003be:	0a03      	lsrs	r3, r0, #8
 80003c0:	428b      	cmp	r3, r1
 80003c2:	d30c      	bcc.n	80003de <__aeabi_idiv+0x14a>
 80003c4:	0189      	lsls	r1, r1, #6
 80003c6:	1192      	asrs	r2, r2, #6
 80003c8:	428b      	cmp	r3, r1
 80003ca:	d308      	bcc.n	80003de <__aeabi_idiv+0x14a>
 80003cc:	0189      	lsls	r1, r1, #6
 80003ce:	1192      	asrs	r2, r2, #6
 80003d0:	428b      	cmp	r3, r1
 80003d2:	d304      	bcc.n	80003de <__aeabi_idiv+0x14a>
 80003d4:	0189      	lsls	r1, r1, #6
 80003d6:	d03a      	beq.n	800044e <__aeabi_idiv+0x1ba>
 80003d8:	1192      	asrs	r2, r2, #6
 80003da:	e000      	b.n	80003de <__aeabi_idiv+0x14a>
 80003dc:	0989      	lsrs	r1, r1, #6
 80003de:	09c3      	lsrs	r3, r0, #7
 80003e0:	428b      	cmp	r3, r1
 80003e2:	d301      	bcc.n	80003e8 <__aeabi_idiv+0x154>
 80003e4:	01cb      	lsls	r3, r1, #7
 80003e6:	1ac0      	subs	r0, r0, r3
 80003e8:	4152      	adcs	r2, r2
 80003ea:	0983      	lsrs	r3, r0, #6
 80003ec:	428b      	cmp	r3, r1
 80003ee:	d301      	bcc.n	80003f4 <__aeabi_idiv+0x160>
 80003f0:	018b      	lsls	r3, r1, #6
 80003f2:	1ac0      	subs	r0, r0, r3
 80003f4:	4152      	adcs	r2, r2
 80003f6:	0943      	lsrs	r3, r0, #5
 80003f8:	428b      	cmp	r3, r1
 80003fa:	d301      	bcc.n	8000400 <__aeabi_idiv+0x16c>
 80003fc:	014b      	lsls	r3, r1, #5
 80003fe:	1ac0      	subs	r0, r0, r3
 8000400:	4152      	adcs	r2, r2
 8000402:	0903      	lsrs	r3, r0, #4
 8000404:	428b      	cmp	r3, r1
 8000406:	d301      	bcc.n	800040c <__aeabi_idiv+0x178>
 8000408:	010b      	lsls	r3, r1, #4
 800040a:	1ac0      	subs	r0, r0, r3
 800040c:	4152      	adcs	r2, r2
 800040e:	08c3      	lsrs	r3, r0, #3
 8000410:	428b      	cmp	r3, r1
 8000412:	d301      	bcc.n	8000418 <__aeabi_idiv+0x184>
 8000414:	00cb      	lsls	r3, r1, #3
 8000416:	1ac0      	subs	r0, r0, r3
 8000418:	4152      	adcs	r2, r2
 800041a:	0883      	lsrs	r3, r0, #2
 800041c:	428b      	cmp	r3, r1
 800041e:	d301      	bcc.n	8000424 <__aeabi_idiv+0x190>
 8000420:	008b      	lsls	r3, r1, #2
 8000422:	1ac0      	subs	r0, r0, r3
 8000424:	4152      	adcs	r2, r2
 8000426:	d2d9      	bcs.n	80003dc <__aeabi_idiv+0x148>
 8000428:	0843      	lsrs	r3, r0, #1
 800042a:	428b      	cmp	r3, r1
 800042c:	d301      	bcc.n	8000432 <__aeabi_idiv+0x19e>
 800042e:	004b      	lsls	r3, r1, #1
 8000430:	1ac0      	subs	r0, r0, r3
 8000432:	4152      	adcs	r2, r2
 8000434:	1a41      	subs	r1, r0, r1
 8000436:	d200      	bcs.n	800043a <__aeabi_idiv+0x1a6>
 8000438:	4601      	mov	r1, r0
 800043a:	4663      	mov	r3, ip
 800043c:	4152      	adcs	r2, r2
 800043e:	105b      	asrs	r3, r3, #1
 8000440:	4610      	mov	r0, r2
 8000442:	d301      	bcc.n	8000448 <__aeabi_idiv+0x1b4>
 8000444:	4240      	negs	r0, r0
 8000446:	2b00      	cmp	r3, #0
 8000448:	d500      	bpl.n	800044c <__aeabi_idiv+0x1b8>
 800044a:	4249      	negs	r1, r1
 800044c:	4770      	bx	lr
 800044e:	4663      	mov	r3, ip
 8000450:	105b      	asrs	r3, r3, #1
 8000452:	d300      	bcc.n	8000456 <__aeabi_idiv+0x1c2>
 8000454:	4240      	negs	r0, r0
 8000456:	b501      	push	{r0, lr}
 8000458:	2000      	movs	r0, #0
 800045a:	f000 f80b 	bl	8000474 <__aeabi_idiv0>
 800045e:	bd02      	pop	{r1, pc}

08000460 <__aeabi_idivmod>:
 8000460:	2900      	cmp	r1, #0
 8000462:	d0f8      	beq.n	8000456 <__aeabi_idiv+0x1c2>
 8000464:	b503      	push	{r0, r1, lr}
 8000466:	f7ff ff15 	bl	8000294 <__aeabi_idiv>
 800046a:	bc0e      	pop	{r1, r2, r3}
 800046c:	4342      	muls	r2, r0
 800046e:	1a89      	subs	r1, r1, r2
 8000470:	4718      	bx	r3
 8000472:	46c0      	nop			; (mov r8, r8)

08000474 <__aeabi_idiv0>:
 8000474:	4770      	bx	lr
 8000476:	46c0      	nop			; (mov r8, r8)

08000478 <Reset_Handler>:
 8000478:	480d      	ldr	r0, [pc, #52]	; (80004b0 <LoopForever+0x2>)
 800047a:	4685      	mov	sp, r0
 800047c:	480d      	ldr	r0, [pc, #52]	; (80004b4 <LoopForever+0x6>)
 800047e:	490e      	ldr	r1, [pc, #56]	; (80004b8 <LoopForever+0xa>)
 8000480:	4a0e      	ldr	r2, [pc, #56]	; (80004bc <LoopForever+0xe>)
 8000482:	2300      	movs	r3, #0
 8000484:	e002      	b.n	800048c <LoopCopyDataInit>

08000486 <CopyDataInit>:
 8000486:	58d4      	ldr	r4, [r2, r3]
 8000488:	50c4      	str	r4, [r0, r3]
 800048a:	3304      	adds	r3, #4

0800048c <LoopCopyDataInit>:
 800048c:	18c4      	adds	r4, r0, r3
 800048e:	428c      	cmp	r4, r1
 8000490:	d3f9      	bcc.n	8000486 <CopyDataInit>
 8000492:	4a0b      	ldr	r2, [pc, #44]	; (80004c0 <LoopForever+0x12>)
 8000494:	4c0b      	ldr	r4, [pc, #44]	; (80004c4 <LoopForever+0x16>)
 8000496:	2300      	movs	r3, #0
 8000498:	e001      	b.n	800049e <LoopFillZerobss>

0800049a <FillZerobss>:
 800049a:	6013      	str	r3, [r2, #0]
 800049c:	3204      	adds	r2, #4

0800049e <LoopFillZerobss>:
 800049e:	42a2      	cmp	r2, r4
 80004a0:	d3fb      	bcc.n	800049a <FillZerobss>
 80004a2:	f000 fed5 	bl	8001250 <SystemInit>
 80004a6:	f001 fac5 	bl	8001a34 <__libc_init_array>
 80004aa:	f000 fe89 	bl	80011c0 <main>

080004ae <LoopForever>:
 80004ae:	e7fe      	b.n	80004ae <LoopForever>
 80004b0:	20002000 	.word	0x20002000
 80004b4:	20000000 	.word	0x20000000
 80004b8:	20000470 	.word	0x20000470
 80004bc:	08001b94 	.word	0x08001b94
 80004c0:	20000470 	.word	0x20000470
 80004c4:	2000053c 	.word	0x2000053c

080004c8 <ADC1_COMP_IRQHandler>:
 80004c8:	e7fe      	b.n	80004c8 <ADC1_COMP_IRQHandler>
	...

080004cc <NVIC_EnableIRQ>:
 80004cc:	b580      	push	{r7, lr}
 80004ce:	b082      	sub	sp, #8
 80004d0:	af00      	add	r7, sp, #0
 80004d2:	1c02      	adds	r2, r0, #0
 80004d4:	1dfb      	adds	r3, r7, #7
 80004d6:	701a      	strb	r2, [r3, #0]
 80004d8:	4b06      	ldr	r3, [pc, #24]	; (80004f4 <NVIC_EnableIRQ+0x28>)
 80004da:	1dfa      	adds	r2, r7, #7
 80004dc:	7812      	ldrb	r2, [r2, #0]
 80004de:	1c11      	adds	r1, r2, #0
 80004e0:	221f      	movs	r2, #31
 80004e2:	400a      	ands	r2, r1
 80004e4:	2101      	movs	r1, #1
 80004e6:	4091      	lsls	r1, r2
 80004e8:	1c0a      	adds	r2, r1, #0
 80004ea:	601a      	str	r2, [r3, #0]
 80004ec:	46bd      	mov	sp, r7
 80004ee:	b002      	add	sp, #8
 80004f0:	bd80      	pop	{r7, pc}
 80004f2:	46c0      	nop			; (mov r8, r8)
 80004f4:	e000e100 	.word	0xe000e100

080004f8 <NVIC_SetPriority>:
 80004f8:	b5b0      	push	{r4, r5, r7, lr}
 80004fa:	b082      	sub	sp, #8
 80004fc:	af00      	add	r7, sp, #0
 80004fe:	1c02      	adds	r2, r0, #0
 8000500:	6039      	str	r1, [r7, #0]
 8000502:	1dfb      	adds	r3, r7, #7
 8000504:	701a      	strb	r2, [r3, #0]
 8000506:	1dfb      	adds	r3, r7, #7
 8000508:	781b      	ldrb	r3, [r3, #0]
 800050a:	2b7f      	cmp	r3, #127	; 0x7f
 800050c:	d92f      	bls.n	800056e <NVIC_SetPriority+0x76>
 800050e:	4c2d      	ldr	r4, [pc, #180]	; (80005c4 <NVIC_SetPriority+0xcc>)
 8000510:	1dfb      	adds	r3, r7, #7
 8000512:	781b      	ldrb	r3, [r3, #0]
 8000514:	1c1a      	adds	r2, r3, #0
 8000516:	230f      	movs	r3, #15
 8000518:	4013      	ands	r3, r2
 800051a:	3b08      	subs	r3, #8
 800051c:	0899      	lsrs	r1, r3, #2
 800051e:	4a29      	ldr	r2, [pc, #164]	; (80005c4 <NVIC_SetPriority+0xcc>)
 8000520:	1dfb      	adds	r3, r7, #7
 8000522:	781b      	ldrb	r3, [r3, #0]
 8000524:	1c18      	adds	r0, r3, #0
 8000526:	230f      	movs	r3, #15
 8000528:	4003      	ands	r3, r0
 800052a:	3b08      	subs	r3, #8
 800052c:	089b      	lsrs	r3, r3, #2
 800052e:	3306      	adds	r3, #6
 8000530:	009b      	lsls	r3, r3, #2
 8000532:	18d3      	adds	r3, r2, r3
 8000534:	685b      	ldr	r3, [r3, #4]
 8000536:	1dfa      	adds	r2, r7, #7
 8000538:	7812      	ldrb	r2, [r2, #0]
 800053a:	1c10      	adds	r0, r2, #0
 800053c:	2203      	movs	r2, #3
 800053e:	4002      	ands	r2, r0
 8000540:	00d2      	lsls	r2, r2, #3
 8000542:	1c10      	adds	r0, r2, #0
 8000544:	22ff      	movs	r2, #255	; 0xff
 8000546:	4082      	lsls	r2, r0
 8000548:	43d2      	mvns	r2, r2
 800054a:	401a      	ands	r2, r3
 800054c:	683b      	ldr	r3, [r7, #0]
 800054e:	019b      	lsls	r3, r3, #6
 8000550:	20ff      	movs	r0, #255	; 0xff
 8000552:	4003      	ands	r3, r0
 8000554:	1df8      	adds	r0, r7, #7
 8000556:	7800      	ldrb	r0, [r0, #0]
 8000558:	1c05      	adds	r5, r0, #0
 800055a:	2003      	movs	r0, #3
 800055c:	4028      	ands	r0, r5
 800055e:	00c0      	lsls	r0, r0, #3
 8000560:	4083      	lsls	r3, r0
 8000562:	431a      	orrs	r2, r3
 8000564:	1d8b      	adds	r3, r1, #6
 8000566:	009b      	lsls	r3, r3, #2
 8000568:	18e3      	adds	r3, r4, r3
 800056a:	605a      	str	r2, [r3, #4]
 800056c:	e026      	b.n	80005bc <NVIC_SetPriority+0xc4>
 800056e:	4c16      	ldr	r4, [pc, #88]	; (80005c8 <NVIC_SetPriority+0xd0>)
 8000570:	1dfb      	adds	r3, r7, #7
 8000572:	781b      	ldrb	r3, [r3, #0]
 8000574:	b25b      	sxtb	r3, r3
 8000576:	089b      	lsrs	r3, r3, #2
 8000578:	4913      	ldr	r1, [pc, #76]	; (80005c8 <NVIC_SetPriority+0xd0>)
 800057a:	1dfa      	adds	r2, r7, #7
 800057c:	7812      	ldrb	r2, [r2, #0]
 800057e:	b252      	sxtb	r2, r2
 8000580:	0892      	lsrs	r2, r2, #2
 8000582:	32c0      	adds	r2, #192	; 0xc0
 8000584:	0092      	lsls	r2, r2, #2
 8000586:	5852      	ldr	r2, [r2, r1]
 8000588:	1df9      	adds	r1, r7, #7
 800058a:	7809      	ldrb	r1, [r1, #0]
 800058c:	1c08      	adds	r0, r1, #0
 800058e:	2103      	movs	r1, #3
 8000590:	4001      	ands	r1, r0
 8000592:	00c9      	lsls	r1, r1, #3
 8000594:	1c08      	adds	r0, r1, #0
 8000596:	21ff      	movs	r1, #255	; 0xff
 8000598:	4081      	lsls	r1, r0
 800059a:	43c9      	mvns	r1, r1
 800059c:	4011      	ands	r1, r2
 800059e:	683a      	ldr	r2, [r7, #0]
 80005a0:	0192      	lsls	r2, r2, #6
 80005a2:	20ff      	movs	r0, #255	; 0xff
 80005a4:	4002      	ands	r2, r0
 80005a6:	1df8      	adds	r0, r7, #7
 80005a8:	7800      	ldrb	r0, [r0, #0]
 80005aa:	1c05      	adds	r5, r0, #0
 80005ac:	2003      	movs	r0, #3
 80005ae:	4028      	ands	r0, r5
 80005b0:	00c0      	lsls	r0, r0, #3
 80005b2:	4082      	lsls	r2, r0
 80005b4:	430a      	orrs	r2, r1
 80005b6:	33c0      	adds	r3, #192	; 0xc0
 80005b8:	009b      	lsls	r3, r3, #2
 80005ba:	511a      	str	r2, [r3, r4]
 80005bc:	46bd      	mov	sp, r7
 80005be:	b002      	add	sp, #8
 80005c0:	bdb0      	pop	{r4, r5, r7, pc}
 80005c2:	46c0      	nop			; (mov r8, r8)
 80005c4:	e000ed00 	.word	0xe000ed00
 80005c8:	e000e100 	.word	0xe000e100

080005cc <SysTick_Config>:
 80005cc:	b580      	push	{r7, lr}
 80005ce:	b082      	sub	sp, #8
 80005d0:	af00      	add	r7, sp, #0
 80005d2:	6078      	str	r0, [r7, #4]
 80005d4:	687b      	ldr	r3, [r7, #4]
 80005d6:	3b01      	subs	r3, #1
 80005d8:	4a0c      	ldr	r2, [pc, #48]	; (800060c <SysTick_Config+0x40>)
 80005da:	4293      	cmp	r3, r2
 80005dc:	d901      	bls.n	80005e2 <SysTick_Config+0x16>
 80005de:	2301      	movs	r3, #1
 80005e0:	e010      	b.n	8000604 <SysTick_Config+0x38>
 80005e2:	4b0b      	ldr	r3, [pc, #44]	; (8000610 <SysTick_Config+0x44>)
 80005e4:	687a      	ldr	r2, [r7, #4]
 80005e6:	3a01      	subs	r2, #1
 80005e8:	605a      	str	r2, [r3, #4]
 80005ea:	2301      	movs	r3, #1
 80005ec:	425b      	negs	r3, r3
 80005ee:	1c18      	adds	r0, r3, #0
 80005f0:	2103      	movs	r1, #3
 80005f2:	f7ff ff81 	bl	80004f8 <NVIC_SetPriority>
 80005f6:	4b06      	ldr	r3, [pc, #24]	; (8000610 <SysTick_Config+0x44>)
 80005f8:	2200      	movs	r2, #0
 80005fa:	609a      	str	r2, [r3, #8]
 80005fc:	4b04      	ldr	r3, [pc, #16]	; (8000610 <SysTick_Config+0x44>)
 80005fe:	2207      	movs	r2, #7
 8000600:	601a      	str	r2, [r3, #0]
 8000602:	2300      	movs	r3, #0
 8000604:	1c18      	adds	r0, r3, #0
 8000606:	46bd      	mov	sp, r7
 8000608:	b002      	add	sp, #8
 800060a:	bd80      	pop	{r7, pc}
 800060c:	00ffffff 	.word	0x00ffffff
 8000610:	e000e010 	.word	0xe000e010

08000614 <LL_AHB1_GRP1_EnableClock>:
 8000614:	b580      	push	{r7, lr}
 8000616:	b084      	sub	sp, #16
 8000618:	af00      	add	r7, sp, #0
 800061a:	6078      	str	r0, [r7, #4]
 800061c:	4b07      	ldr	r3, [pc, #28]	; (800063c <LL_AHB1_GRP1_EnableClock+0x28>)
 800061e:	4a07      	ldr	r2, [pc, #28]	; (800063c <LL_AHB1_GRP1_EnableClock+0x28>)
 8000620:	6951      	ldr	r1, [r2, #20]
 8000622:	687a      	ldr	r2, [r7, #4]
 8000624:	430a      	orrs	r2, r1
 8000626:	615a      	str	r2, [r3, #20]
 8000628:	4b04      	ldr	r3, [pc, #16]	; (800063c <LL_AHB1_GRP1_EnableClock+0x28>)
 800062a:	695b      	ldr	r3, [r3, #20]
 800062c:	687a      	ldr	r2, [r7, #4]
 800062e:	4013      	ands	r3, r2
 8000630:	60fb      	str	r3, [r7, #12]
 8000632:	68fb      	ldr	r3, [r7, #12]
 8000634:	46bd      	mov	sp, r7
 8000636:	b004      	add	sp, #16
 8000638:	bd80      	pop	{r7, pc}
 800063a:	46c0      	nop			; (mov r8, r8)
 800063c:	40021000 	.word	0x40021000

08000640 <LL_APB1_GRP1_EnableClock>:
 8000640:	b580      	push	{r7, lr}
 8000642:	b084      	sub	sp, #16
 8000644:	af00      	add	r7, sp, #0
 8000646:	6078      	str	r0, [r7, #4]
 8000648:	4b07      	ldr	r3, [pc, #28]	; (8000668 <LL_APB1_GRP1_EnableClock+0x28>)
 800064a:	4a07      	ldr	r2, [pc, #28]	; (8000668 <LL_APB1_GRP1_EnableClock+0x28>)
 800064c:	69d1      	ldr	r1, [r2, #28]
 800064e:	687a      	ldr	r2, [r7, #4]
 8000650:	430a      	orrs	r2, r1
 8000652:	61da      	str	r2, [r3, #28]
 8000654:	4b04      	ldr	r3, [pc, #16]	; (8000668 <LL_APB1_GRP1_EnableClock+0x28>)
 8000656:	69db      	ldr	r3, [r3, #28]
 8000658:	687a      	ldr	r2, [r7, #4]
 800065a:	4013      	ands	r3, r2
 800065c:	60fb      	str	r3, [r7, #12]
 800065e:	68fb      	ldr	r3, [r7, #12]
 8000660:	46bd      	mov	sp, r7
 8000662:	b004      	add	sp, #16
 8000664:	bd80      	pop	{r7, pc}
 8000666:	46c0      	nop			; (mov r8, r8)
 8000668:	40021000 	.word	0x40021000

0800066c <LL_APB1_GRP2_EnableClock>:
 800066c:	b580      	push	{r7, lr}
 800066e:	b084      	sub	sp, #16
 8000670:	af00      	add	r7, sp, #0
 8000672:	6078      	str	r0, [r7, #4]
 8000674:	4b07      	ldr	r3, [pc, #28]	; (8000694 <LL_APB1_GRP2_EnableClock+0x28>)
 8000676:	4a07      	ldr	r2, [pc, #28]	; (8000694 <LL_APB1_GRP2_EnableClock+0x28>)
 8000678:	6991      	ldr	r1, [r2, #24]
 800067a:	687a      	ldr	r2, [r7, #4]
 800067c:	430a      	orrs	r2, r1
 800067e:	619a      	str	r2, [r3, #24]
 8000680:	4b04      	ldr	r3, [pc, #16]	; (8000694 <LL_APB1_GRP2_EnableClock+0x28>)
 8000682:	699b      	ldr	r3, [r3, #24]
 8000684:	687a      	ldr	r2, [r7, #4]
 8000686:	4013      	ands	r3, r2
 8000688:	60fb      	str	r3, [r7, #12]
 800068a:	68fb      	ldr	r3, [r7, #12]
 800068c:	46bd      	mov	sp, r7
 800068e:	b004      	add	sp, #16
 8000690:	bd80      	pop	{r7, pc}
 8000692:	46c0      	nop			; (mov r8, r8)
 8000694:	40021000 	.word	0x40021000

08000698 <LL_GPIO_SetPinMode>:
 8000698:	b580      	push	{r7, lr}
 800069a:	b084      	sub	sp, #16
 800069c:	af00      	add	r7, sp, #0
 800069e:	60f8      	str	r0, [r7, #12]
 80006a0:	60b9      	str	r1, [r7, #8]
 80006a2:	607a      	str	r2, [r7, #4]
 80006a4:	68fb      	ldr	r3, [r7, #12]
 80006a6:	6819      	ldr	r1, [r3, #0]
 80006a8:	68bb      	ldr	r3, [r7, #8]
 80006aa:	68ba      	ldr	r2, [r7, #8]
 80006ac:	435a      	muls	r2, r3
 80006ae:	1c13      	adds	r3, r2, #0
 80006b0:	005b      	lsls	r3, r3, #1
 80006b2:	189b      	adds	r3, r3, r2
 80006b4:	43db      	mvns	r3, r3
 80006b6:	400b      	ands	r3, r1
 80006b8:	1c1a      	adds	r2, r3, #0
 80006ba:	68bb      	ldr	r3, [r7, #8]
 80006bc:	68b9      	ldr	r1, [r7, #8]
 80006be:	434b      	muls	r3, r1
 80006c0:	6879      	ldr	r1, [r7, #4]
 80006c2:	434b      	muls	r3, r1
 80006c4:	431a      	orrs	r2, r3
 80006c6:	68fb      	ldr	r3, [r7, #12]
 80006c8:	601a      	str	r2, [r3, #0]
 80006ca:	46bd      	mov	sp, r7
 80006cc:	b004      	add	sp, #16
 80006ce:	bd80      	pop	{r7, pc}

080006d0 <LL_GPIO_SetPinPull>:
 80006d0:	b580      	push	{r7, lr}
 80006d2:	b084      	sub	sp, #16
 80006d4:	af00      	add	r7, sp, #0
 80006d6:	60f8      	str	r0, [r7, #12]
 80006d8:	60b9      	str	r1, [r7, #8]
 80006da:	607a      	str	r2, [r7, #4]
 80006dc:	68fb      	ldr	r3, [r7, #12]
 80006de:	68d9      	ldr	r1, [r3, #12]
 80006e0:	68bb      	ldr	r3, [r7, #8]
 80006e2:	68ba      	ldr	r2, [r7, #8]
 80006e4:	435a      	muls	r2, r3
 80006e6:	1c13      	adds	r3, r2, #0
 80006e8:	005b      	lsls	r3, r3, #1
 80006ea:	189b      	adds	r3, r3, r2
 80006ec:	43db      	mvns	r3, r3
 80006ee:	400b      	ands	r3, r1
 80006f0:	1c1a      	adds	r2, r3, #0
 80006f2:	68bb      	ldr	r3, [r7, #8]
 80006f4:	68b9      	ldr	r1, [r7, #8]
 80006f6:	434b      	muls	r3, r1
 80006f8:	6879      	ldr	r1, [r7, #4]
 80006fa:	434b      	muls	r3, r1
 80006fc:	431a      	orrs	r2, r3
 80006fe:	68fb      	ldr	r3, [r7, #12]
 8000700:	60da      	str	r2, [r3, #12]
 8000702:	46bd      	mov	sp, r7
 8000704:	b004      	add	sp, #16
 8000706:	bd80      	pop	{r7, pc}

08000708 <LL_GPIO_WriteOutputPort>:
 8000708:	b580      	push	{r7, lr}
 800070a:	b082      	sub	sp, #8
 800070c:	af00      	add	r7, sp, #0
 800070e:	6078      	str	r0, [r7, #4]
 8000710:	6039      	str	r1, [r7, #0]
 8000712:	687b      	ldr	r3, [r7, #4]
 8000714:	683a      	ldr	r2, [r7, #0]
 8000716:	615a      	str	r2, [r3, #20]
 8000718:	46bd      	mov	sp, r7
 800071a:	b002      	add	sp, #8
 800071c:	bd80      	pop	{r7, pc}
 800071e:	46c0      	nop			; (mov r8, r8)

08000720 <LL_RCC_HSI_Enable>:
 8000720:	b580      	push	{r7, lr}
 8000722:	af00      	add	r7, sp, #0
 8000724:	4b03      	ldr	r3, [pc, #12]	; (8000734 <LL_RCC_HSI_Enable+0x14>)
 8000726:	4a03      	ldr	r2, [pc, #12]	; (8000734 <LL_RCC_HSI_Enable+0x14>)
 8000728:	6812      	ldr	r2, [r2, #0]
 800072a:	2101      	movs	r1, #1
 800072c:	430a      	orrs	r2, r1
 800072e:	601a      	str	r2, [r3, #0]
 8000730:	46bd      	mov	sp, r7
 8000732:	bd80      	pop	{r7, pc}
 8000734:	40021000 	.word	0x40021000

08000738 <LL_RCC_HSI_IsReady>:
 8000738:	b580      	push	{r7, lr}
 800073a:	af00      	add	r7, sp, #0
 800073c:	4b04      	ldr	r3, [pc, #16]	; (8000750 <LL_RCC_HSI_IsReady+0x18>)
 800073e:	681b      	ldr	r3, [r3, #0]
 8000740:	2202      	movs	r2, #2
 8000742:	4013      	ands	r3, r2
 8000744:	1e5a      	subs	r2, r3, #1
 8000746:	4193      	sbcs	r3, r2
 8000748:	b2db      	uxtb	r3, r3
 800074a:	1c18      	adds	r0, r3, #0
 800074c:	46bd      	mov	sp, r7
 800074e:	bd80      	pop	{r7, pc}
 8000750:	40021000 	.word	0x40021000

08000754 <LL_RCC_SetSysClkSource>:
 8000754:	b580      	push	{r7, lr}
 8000756:	b082      	sub	sp, #8
 8000758:	af00      	add	r7, sp, #0
 800075a:	6078      	str	r0, [r7, #4]
 800075c:	4b05      	ldr	r3, [pc, #20]	; (8000774 <LL_RCC_SetSysClkSource+0x20>)
 800075e:	4a05      	ldr	r2, [pc, #20]	; (8000774 <LL_RCC_SetSysClkSource+0x20>)
 8000760:	6852      	ldr	r2, [r2, #4]
 8000762:	2103      	movs	r1, #3
 8000764:	438a      	bics	r2, r1
 8000766:	1c11      	adds	r1, r2, #0
 8000768:	687a      	ldr	r2, [r7, #4]
 800076a:	430a      	orrs	r2, r1
 800076c:	605a      	str	r2, [r3, #4]
 800076e:	46bd      	mov	sp, r7
 8000770:	b002      	add	sp, #8
 8000772:	bd80      	pop	{r7, pc}
 8000774:	40021000 	.word	0x40021000

08000778 <LL_RCC_GetSysClkSource>:
 8000778:	b580      	push	{r7, lr}
 800077a:	af00      	add	r7, sp, #0
 800077c:	4b03      	ldr	r3, [pc, #12]	; (800078c <LL_RCC_GetSysClkSource+0x14>)
 800077e:	685b      	ldr	r3, [r3, #4]
 8000780:	220c      	movs	r2, #12
 8000782:	4013      	ands	r3, r2
 8000784:	1c18      	adds	r0, r3, #0
 8000786:	46bd      	mov	sp, r7
 8000788:	bd80      	pop	{r7, pc}
 800078a:	46c0      	nop			; (mov r8, r8)
 800078c:	40021000 	.word	0x40021000

08000790 <LL_RCC_SetAHBPrescaler>:
 8000790:	b580      	push	{r7, lr}
 8000792:	b082      	sub	sp, #8
 8000794:	af00      	add	r7, sp, #0
 8000796:	6078      	str	r0, [r7, #4]
 8000798:	4b05      	ldr	r3, [pc, #20]	; (80007b0 <LL_RCC_SetAHBPrescaler+0x20>)
 800079a:	4a05      	ldr	r2, [pc, #20]	; (80007b0 <LL_RCC_SetAHBPrescaler+0x20>)
 800079c:	6852      	ldr	r2, [r2, #4]
 800079e:	21f0      	movs	r1, #240	; 0xf0
 80007a0:	438a      	bics	r2, r1
 80007a2:	1c11      	adds	r1, r2, #0
 80007a4:	687a      	ldr	r2, [r7, #4]
 80007a6:	430a      	orrs	r2, r1
 80007a8:	605a      	str	r2, [r3, #4]
 80007aa:	46bd      	mov	sp, r7
 80007ac:	b002      	add	sp, #8
 80007ae:	bd80      	pop	{r7, pc}
 80007b0:	40021000 	.word	0x40021000

080007b4 <LL_RCC_SetAPB1Prescaler>:
 80007b4:	b580      	push	{r7, lr}
 80007b6:	b082      	sub	sp, #8
 80007b8:	af00      	add	r7, sp, #0
 80007ba:	6078      	str	r0, [r7, #4]
 80007bc:	4b05      	ldr	r3, [pc, #20]	; (80007d4 <LL_RCC_SetAPB1Prescaler+0x20>)
 80007be:	4a05      	ldr	r2, [pc, #20]	; (80007d4 <LL_RCC_SetAPB1Prescaler+0x20>)
 80007c0:	6852      	ldr	r2, [r2, #4]
 80007c2:	4905      	ldr	r1, [pc, #20]	; (80007d8 <LL_RCC_SetAPB1Prescaler+0x24>)
 80007c4:	4011      	ands	r1, r2
 80007c6:	687a      	ldr	r2, [r7, #4]
 80007c8:	430a      	orrs	r2, r1
 80007ca:	605a      	str	r2, [r3, #4]
 80007cc:	46bd      	mov	sp, r7
 80007ce:	b002      	add	sp, #8
 80007d0:	bd80      	pop	{r7, pc}
 80007d2:	46c0      	nop			; (mov r8, r8)
 80007d4:	40021000 	.word	0x40021000
 80007d8:	fffff8ff 	.word	0xfffff8ff

080007dc <LL_RCC_PLL_Enable>:
 80007dc:	b580      	push	{r7, lr}
 80007de:	af00      	add	r7, sp, #0
 80007e0:	4b04      	ldr	r3, [pc, #16]	; (80007f4 <LL_RCC_PLL_Enable+0x18>)
 80007e2:	4a04      	ldr	r2, [pc, #16]	; (80007f4 <LL_RCC_PLL_Enable+0x18>)
 80007e4:	6812      	ldr	r2, [r2, #0]
 80007e6:	2180      	movs	r1, #128	; 0x80
 80007e8:	0449      	lsls	r1, r1, #17
 80007ea:	430a      	orrs	r2, r1
 80007ec:	601a      	str	r2, [r3, #0]
 80007ee:	46bd      	mov	sp, r7
 80007f0:	bd80      	pop	{r7, pc}
 80007f2:	46c0      	nop			; (mov r8, r8)
 80007f4:	40021000 	.word	0x40021000

080007f8 <LL_RCC_PLL_IsReady>:
 80007f8:	b580      	push	{r7, lr}
 80007fa:	af00      	add	r7, sp, #0
 80007fc:	4b05      	ldr	r3, [pc, #20]	; (8000814 <LL_RCC_PLL_IsReady+0x1c>)
 80007fe:	681a      	ldr	r2, [r3, #0]
 8000800:	2380      	movs	r3, #128	; 0x80
 8000802:	049b      	lsls	r3, r3, #18
 8000804:	4013      	ands	r3, r2
 8000806:	1e5a      	subs	r2, r3, #1
 8000808:	4193      	sbcs	r3, r2
 800080a:	b2db      	uxtb	r3, r3
 800080c:	1c18      	adds	r0, r3, #0
 800080e:	46bd      	mov	sp, r7
 8000810:	bd80      	pop	{r7, pc}
 8000812:	46c0      	nop			; (mov r8, r8)
 8000814:	40021000 	.word	0x40021000

08000818 <LL_RCC_PLL_ConfigDomain_SYS>:
 8000818:	b580      	push	{r7, lr}
 800081a:	b082      	sub	sp, #8
 800081c:	af00      	add	r7, sp, #0
 800081e:	6078      	str	r0, [r7, #4]
 8000820:	6039      	str	r1, [r7, #0]
 8000822:	4b0d      	ldr	r3, [pc, #52]	; (8000858 <LL_RCC_PLL_ConfigDomain_SYS+0x40>)
 8000824:	4a0c      	ldr	r2, [pc, #48]	; (8000858 <LL_RCC_PLL_ConfigDomain_SYS+0x40>)
 8000826:	6852      	ldr	r2, [r2, #4]
 8000828:	490c      	ldr	r1, [pc, #48]	; (800085c <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800082a:	4011      	ands	r1, r2
 800082c:	6878      	ldr	r0, [r7, #4]
 800082e:	2280      	movs	r2, #128	; 0x80
 8000830:	0252      	lsls	r2, r2, #9
 8000832:	4010      	ands	r0, r2
 8000834:	683a      	ldr	r2, [r7, #0]
 8000836:	4302      	orrs	r2, r0
 8000838:	430a      	orrs	r2, r1
 800083a:	605a      	str	r2, [r3, #4]
 800083c:	4b06      	ldr	r3, [pc, #24]	; (8000858 <LL_RCC_PLL_ConfigDomain_SYS+0x40>)
 800083e:	4a06      	ldr	r2, [pc, #24]	; (8000858 <LL_RCC_PLL_ConfigDomain_SYS+0x40>)
 8000840:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 8000842:	210f      	movs	r1, #15
 8000844:	438a      	bics	r2, r1
 8000846:	1c11      	adds	r1, r2, #0
 8000848:	687a      	ldr	r2, [r7, #4]
 800084a:	200f      	movs	r0, #15
 800084c:	4002      	ands	r2, r0
 800084e:	430a      	orrs	r2, r1
 8000850:	62da      	str	r2, [r3, #44]	; 0x2c
 8000852:	46bd      	mov	sp, r7
 8000854:	b002      	add	sp, #8
 8000856:	bd80      	pop	{r7, pc}
 8000858:	40021000 	.word	0x40021000
 800085c:	ffc2ffff 	.word	0xffc2ffff

08000860 <LL_SYSCFG_SetEXTISource>:
 8000860:	b590      	push	{r4, r7, lr}
 8000862:	b083      	sub	sp, #12
 8000864:	af00      	add	r7, sp, #0
 8000866:	6078      	str	r0, [r7, #4]
 8000868:	6039      	str	r1, [r7, #0]
 800086a:	480f      	ldr	r0, [pc, #60]	; (80008a8 <LL_SYSCFG_SetEXTISource+0x48>)
 800086c:	683b      	ldr	r3, [r7, #0]
 800086e:	22ff      	movs	r2, #255	; 0xff
 8000870:	4013      	ands	r3, r2
 8000872:	490d      	ldr	r1, [pc, #52]	; (80008a8 <LL_SYSCFG_SetEXTISource+0x48>)
 8000874:	683a      	ldr	r2, [r7, #0]
 8000876:	24ff      	movs	r4, #255	; 0xff
 8000878:	4022      	ands	r2, r4
 800087a:	3202      	adds	r2, #2
 800087c:	0092      	lsls	r2, r2, #2
 800087e:	5852      	ldr	r2, [r2, r1]
 8000880:	6839      	ldr	r1, [r7, #0]
 8000882:	0c09      	lsrs	r1, r1, #16
 8000884:	1c0c      	adds	r4, r1, #0
 8000886:	210f      	movs	r1, #15
 8000888:	40a1      	lsls	r1, r4
 800088a:	43c9      	mvns	r1, r1
 800088c:	4011      	ands	r1, r2
 800088e:	683a      	ldr	r2, [r7, #0]
 8000890:	0c12      	lsrs	r2, r2, #16
 8000892:	1c14      	adds	r4, r2, #0
 8000894:	687a      	ldr	r2, [r7, #4]
 8000896:	40a2      	lsls	r2, r4
 8000898:	430a      	orrs	r2, r1
 800089a:	3302      	adds	r3, #2
 800089c:	009b      	lsls	r3, r3, #2
 800089e:	501a      	str	r2, [r3, r0]
 80008a0:	46bd      	mov	sp, r7
 80008a2:	b003      	add	sp, #12
 80008a4:	bd90      	pop	{r4, r7, pc}
 80008a6:	46c0      	nop			; (mov r8, r8)
 80008a8:	40010000 	.word	0x40010000

080008ac <LL_FLASH_SetLatency>:
 80008ac:	b580      	push	{r7, lr}
 80008ae:	b082      	sub	sp, #8
 80008b0:	af00      	add	r7, sp, #0
 80008b2:	6078      	str	r0, [r7, #4]
 80008b4:	4b05      	ldr	r3, [pc, #20]	; (80008cc <LL_FLASH_SetLatency+0x20>)
 80008b6:	4a05      	ldr	r2, [pc, #20]	; (80008cc <LL_FLASH_SetLatency+0x20>)
 80008b8:	6812      	ldr	r2, [r2, #0]
 80008ba:	2101      	movs	r1, #1
 80008bc:	438a      	bics	r2, r1
 80008be:	1c11      	adds	r1, r2, #0
 80008c0:	687a      	ldr	r2, [r7, #4]
 80008c2:	430a      	orrs	r2, r1
 80008c4:	601a      	str	r2, [r3, #0]
 80008c6:	46bd      	mov	sp, r7
 80008c8:	b002      	add	sp, #8
 80008ca:	bd80      	pop	{r7, pc}
 80008cc:	40022000 	.word	0x40022000

080008d0 <LL_EXTI_EnableIT_0_31>:
 80008d0:	b580      	push	{r7, lr}
 80008d2:	b082      	sub	sp, #8
 80008d4:	af00      	add	r7, sp, #0
 80008d6:	6078      	str	r0, [r7, #4]
 80008d8:	4b04      	ldr	r3, [pc, #16]	; (80008ec <LL_EXTI_EnableIT_0_31+0x1c>)
 80008da:	4a04      	ldr	r2, [pc, #16]	; (80008ec <LL_EXTI_EnableIT_0_31+0x1c>)
 80008dc:	6811      	ldr	r1, [r2, #0]
 80008de:	687a      	ldr	r2, [r7, #4]
 80008e0:	430a      	orrs	r2, r1
 80008e2:	601a      	str	r2, [r3, #0]
 80008e4:	46bd      	mov	sp, r7
 80008e6:	b002      	add	sp, #8
 80008e8:	bd80      	pop	{r7, pc}
 80008ea:	46c0      	nop			; (mov r8, r8)
 80008ec:	40010400 	.word	0x40010400

080008f0 <LL_EXTI_EnableFallingTrig_0_31>:
 80008f0:	b580      	push	{r7, lr}
 80008f2:	b082      	sub	sp, #8
 80008f4:	af00      	add	r7, sp, #0
 80008f6:	6078      	str	r0, [r7, #4]
 80008f8:	4b04      	ldr	r3, [pc, #16]	; (800090c <LL_EXTI_EnableFallingTrig_0_31+0x1c>)
 80008fa:	4a04      	ldr	r2, [pc, #16]	; (800090c <LL_EXTI_EnableFallingTrig_0_31+0x1c>)
 80008fc:	68d1      	ldr	r1, [r2, #12]
 80008fe:	687a      	ldr	r2, [r7, #4]
 8000900:	430a      	orrs	r2, r1
 8000902:	60da      	str	r2, [r3, #12]
 8000904:	46bd      	mov	sp, r7
 8000906:	b002      	add	sp, #8
 8000908:	bd80      	pop	{r7, pc}
 800090a:	46c0      	nop			; (mov r8, r8)
 800090c:	40010400 	.word	0x40010400

08000910 <LL_EXTI_IsActiveFlag_0_31>:
 8000910:	b580      	push	{r7, lr}
 8000912:	b082      	sub	sp, #8
 8000914:	af00      	add	r7, sp, #0
 8000916:	6078      	str	r0, [r7, #4]
 8000918:	4b06      	ldr	r3, [pc, #24]	; (8000934 <LL_EXTI_IsActiveFlag_0_31+0x24>)
 800091a:	695b      	ldr	r3, [r3, #20]
 800091c:	687a      	ldr	r2, [r7, #4]
 800091e:	401a      	ands	r2, r3
 8000920:	687b      	ldr	r3, [r7, #4]
 8000922:	1ad3      	subs	r3, r2, r3
 8000924:	425a      	negs	r2, r3
 8000926:	4153      	adcs	r3, r2
 8000928:	b2db      	uxtb	r3, r3
 800092a:	1c18      	adds	r0, r3, #0
 800092c:	46bd      	mov	sp, r7
 800092e:	b002      	add	sp, #8
 8000930:	bd80      	pop	{r7, pc}
 8000932:	46c0      	nop			; (mov r8, r8)
 8000934:	40010400 	.word	0x40010400

08000938 <LL_EXTI_ClearFlag_0_31>:
 8000938:	b580      	push	{r7, lr}
 800093a:	b082      	sub	sp, #8
 800093c:	af00      	add	r7, sp, #0
 800093e:	6078      	str	r0, [r7, #4]
 8000940:	4b02      	ldr	r3, [pc, #8]	; (800094c <LL_EXTI_ClearFlag_0_31+0x14>)
 8000942:	687a      	ldr	r2, [r7, #4]
 8000944:	615a      	str	r2, [r3, #20]
 8000946:	46bd      	mov	sp, r7
 8000948:	b002      	add	sp, #8
 800094a:	bd80      	pop	{r7, pc}
 800094c:	40010400 	.word	0x40010400

08000950 <LL_TIM_EnableCounter>:
 8000950:	b580      	push	{r7, lr}
 8000952:	b082      	sub	sp, #8
 8000954:	af00      	add	r7, sp, #0
 8000956:	6078      	str	r0, [r7, #4]
 8000958:	687b      	ldr	r3, [r7, #4]
 800095a:	681b      	ldr	r3, [r3, #0]
 800095c:	2201      	movs	r2, #1
 800095e:	431a      	orrs	r2, r3
 8000960:	687b      	ldr	r3, [r7, #4]
 8000962:	601a      	str	r2, [r3, #0]
 8000964:	46bd      	mov	sp, r7
 8000966:	b002      	add	sp, #8
 8000968:	bd80      	pop	{r7, pc}
 800096a:	46c0      	nop			; (mov r8, r8)

0800096c <LL_TIM_GetAutoReload>:
 800096c:	b580      	push	{r7, lr}
 800096e:	b082      	sub	sp, #8
 8000970:	af00      	add	r7, sp, #0
 8000972:	6078      	str	r0, [r7, #4]
 8000974:	687b      	ldr	r3, [r7, #4]
 8000976:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8000978:	1c18      	adds	r0, r3, #0
 800097a:	46bd      	mov	sp, r7
 800097c:	b002      	add	sp, #8
 800097e:	bd80      	pop	{r7, pc}

08000980 <logic_serv>:
 8000980:	b580      	push	{r7, lr}
 8000982:	b086      	sub	sp, #24
 8000984:	af00      	add	r7, sp, #0
 8000986:	60f8      	str	r0, [r7, #12]
 8000988:	60b9      	str	r1, [r7, #8]
 800098a:	607a      	str	r2, [r7, #4]
 800098c:	687a      	ldr	r2, [r7, #4]
 800098e:	68bb      	ldr	r3, [r7, #8]
 8000990:	429a      	cmp	r2, r3
 8000992:	d107      	bne.n	80009a4 <logic_serv+0x24>
 8000994:	2310      	movs	r3, #16
 8000996:	18fb      	adds	r3, r7, r3
 8000998:	2200      	movs	r2, #0
 800099a:	601a      	str	r2, [r3, #0]
 800099c:	2310      	movs	r3, #16
 800099e:	18fb      	adds	r3, r7, r3
 80009a0:	2200      	movs	r2, #0
 80009a2:	605a      	str	r2, [r3, #4]
 80009a4:	687a      	ldr	r2, [r7, #4]
 80009a6:	68bb      	ldr	r3, [r7, #8]
 80009a8:	1ad3      	subs	r3, r2, r3
 80009aa:	2b00      	cmp	r3, #0
 80009ac:	dd0c      	ble.n	80009c8 <logic_serv+0x48>
 80009ae:	687a      	ldr	r2, [r7, #4]
 80009b0:	68bb      	ldr	r3, [r7, #8]
 80009b2:	1ad3      	subs	r3, r2, r3
 80009b4:	2b05      	cmp	r3, #5
 80009b6:	dc07      	bgt.n	80009c8 <logic_serv+0x48>
 80009b8:	2310      	movs	r3, #16
 80009ba:	18fb      	adds	r3, r7, r3
 80009bc:	220a      	movs	r2, #10
 80009be:	601a      	str	r2, [r3, #0]
 80009c0:	2310      	movs	r3, #16
 80009c2:	18fb      	adds	r3, r7, r3
 80009c4:	2200      	movs	r2, #0
 80009c6:	605a      	str	r2, [r3, #4]
 80009c8:	687a      	ldr	r2, [r7, #4]
 80009ca:	68bb      	ldr	r3, [r7, #8]
 80009cc:	1ad3      	subs	r3, r2, r3
 80009ce:	2b05      	cmp	r3, #5
 80009d0:	dd0c      	ble.n	80009ec <logic_serv+0x6c>
 80009d2:	687a      	ldr	r2, [r7, #4]
 80009d4:	68bb      	ldr	r3, [r7, #8]
 80009d6:	1ad3      	subs	r3, r2, r3
 80009d8:	2b0a      	cmp	r3, #10
 80009da:	dc07      	bgt.n	80009ec <logic_serv+0x6c>
 80009dc:	2310      	movs	r3, #16
 80009de:	18fb      	adds	r3, r7, r3
 80009e0:	221e      	movs	r2, #30
 80009e2:	601a      	str	r2, [r3, #0]
 80009e4:	2310      	movs	r3, #16
 80009e6:	18fb      	adds	r3, r7, r3
 80009e8:	2200      	movs	r2, #0
 80009ea:	605a      	str	r2, [r3, #4]
 80009ec:	687a      	ldr	r2, [r7, #4]
 80009ee:	68bb      	ldr	r3, [r7, #8]
 80009f0:	1ad3      	subs	r3, r2, r3
 80009f2:	2b0a      	cmp	r3, #10
 80009f4:	dd07      	ble.n	8000a06 <logic_serv+0x86>
 80009f6:	2310      	movs	r3, #16
 80009f8:	18fb      	adds	r3, r7, r3
 80009fa:	2232      	movs	r2, #50	; 0x32
 80009fc:	601a      	str	r2, [r3, #0]
 80009fe:	2310      	movs	r3, #16
 8000a00:	18fb      	adds	r3, r7, r3
 8000a02:	2200      	movs	r2, #0
 8000a04:	605a      	str	r2, [r3, #4]
 8000a06:	68ba      	ldr	r2, [r7, #8]
 8000a08:	687b      	ldr	r3, [r7, #4]
 8000a0a:	1ad3      	subs	r3, r2, r3
 8000a0c:	2b00      	cmp	r3, #0
 8000a0e:	dd0c      	ble.n	8000a2a <logic_serv+0xaa>
 8000a10:	68ba      	ldr	r2, [r7, #8]
 8000a12:	687b      	ldr	r3, [r7, #4]
 8000a14:	1ad3      	subs	r3, r2, r3
 8000a16:	2b05      	cmp	r3, #5
 8000a18:	dc07      	bgt.n	8000a2a <logic_serv+0xaa>
 8000a1a:	2310      	movs	r3, #16
 8000a1c:	18fb      	adds	r3, r7, r3
 8000a1e:	2200      	movs	r2, #0
 8000a20:	601a      	str	r2, [r3, #0]
 8000a22:	2310      	movs	r3, #16
 8000a24:	18fb      	adds	r3, r7, r3
 8000a26:	220a      	movs	r2, #10
 8000a28:	605a      	str	r2, [r3, #4]
 8000a2a:	68ba      	ldr	r2, [r7, #8]
 8000a2c:	687b      	ldr	r3, [r7, #4]
 8000a2e:	1ad3      	subs	r3, r2, r3
 8000a30:	2b05      	cmp	r3, #5
 8000a32:	dd0c      	ble.n	8000a4e <logic_serv+0xce>
 8000a34:	68ba      	ldr	r2, [r7, #8]
 8000a36:	687b      	ldr	r3, [r7, #4]
 8000a38:	1ad3      	subs	r3, r2, r3
 8000a3a:	2b0a      	cmp	r3, #10
 8000a3c:	dc07      	bgt.n	8000a4e <logic_serv+0xce>
 8000a3e:	2310      	movs	r3, #16
 8000a40:	18fb      	adds	r3, r7, r3
 8000a42:	2200      	movs	r2, #0
 8000a44:	601a      	str	r2, [r3, #0]
 8000a46:	2310      	movs	r3, #16
 8000a48:	18fb      	adds	r3, r7, r3
 8000a4a:	221e      	movs	r2, #30
 8000a4c:	605a      	str	r2, [r3, #4]
 8000a4e:	68ba      	ldr	r2, [r7, #8]
 8000a50:	687b      	ldr	r3, [r7, #4]
 8000a52:	1ad3      	subs	r3, r2, r3
 8000a54:	2b0a      	cmp	r3, #10
 8000a56:	dd07      	ble.n	8000a68 <logic_serv+0xe8>
 8000a58:	2310      	movs	r3, #16
 8000a5a:	18fb      	adds	r3, r7, r3
 8000a5c:	2200      	movs	r2, #0
 8000a5e:	601a      	str	r2, [r3, #0]
 8000a60:	2310      	movs	r3, #16
 8000a62:	18fb      	adds	r3, r7, r3
 8000a64:	2232      	movs	r2, #50	; 0x32
 8000a66:	605a      	str	r2, [r3, #4]
 8000a68:	68fb      	ldr	r3, [r7, #12]
 8000a6a:	2210      	movs	r2, #16
 8000a6c:	18ba      	adds	r2, r7, r2
 8000a6e:	ca03      	ldmia	r2!, {r0, r1}
 8000a70:	c303      	stmia	r3!, {r0, r1}
 8000a72:	68f8      	ldr	r0, [r7, #12]
 8000a74:	46bd      	mov	sp, r7
 8000a76:	b006      	add	sp, #24
 8000a78:	bd80      	pop	{r7, pc}
 8000a7a:	46c0      	nop			; (mov r8, r8)

08000a7c <led_init>:
 8000a7c:	b580      	push	{r7, lr}
 8000a7e:	af00      	add	r7, sp, #0
 8000a80:	2380      	movs	r3, #128	; 0x80
 8000a82:	029b      	lsls	r3, r3, #10
 8000a84:	1c18      	adds	r0, r3, #0
 8000a86:	f7ff fdc5 	bl	8000614 <LL_AHB1_GRP1_EnableClock>
 8000a8a:	2380      	movs	r3, #128	; 0x80
 8000a8c:	031b      	lsls	r3, r3, #12
 8000a8e:	1c18      	adds	r0, r3, #0
 8000a90:	f7ff fdc0 	bl	8000614 <LL_AHB1_GRP1_EnableClock>
 8000a94:	4b25      	ldr	r3, [pc, #148]	; (8000b2c <led_init+0xb0>)
 8000a96:	1c18      	adds	r0, r3, #0
 8000a98:	2108      	movs	r1, #8
 8000a9a:	2201      	movs	r2, #1
 8000a9c:	f7ff fdfc 	bl	8000698 <LL_GPIO_SetPinMode>
 8000aa0:	4b22      	ldr	r3, [pc, #136]	; (8000b2c <led_init+0xb0>)
 8000aa2:	1c18      	adds	r0, r3, #0
 8000aa4:	2104      	movs	r1, #4
 8000aa6:	2201      	movs	r2, #1
 8000aa8:	f7ff fdf6 	bl	8000698 <LL_GPIO_SetPinMode>
 8000aac:	4b1f      	ldr	r3, [pc, #124]	; (8000b2c <led_init+0xb0>)
 8000aae:	1c18      	adds	r0, r3, #0
 8000ab0:	2102      	movs	r1, #2
 8000ab2:	2201      	movs	r2, #1
 8000ab4:	f7ff fdf0 	bl	8000698 <LL_GPIO_SetPinMode>
 8000ab8:	4b1c      	ldr	r3, [pc, #112]	; (8000b2c <led_init+0xb0>)
 8000aba:	1c18      	adds	r0, r3, #0
 8000abc:	2101      	movs	r1, #1
 8000abe:	2201      	movs	r2, #1
 8000ac0:	f7ff fdea 	bl	8000698 <LL_GPIO_SetPinMode>
 8000ac4:	2390      	movs	r3, #144	; 0x90
 8000ac6:	05db      	lsls	r3, r3, #23
 8000ac8:	1c18      	adds	r0, r3, #0
 8000aca:	2102      	movs	r1, #2
 8000acc:	2201      	movs	r2, #1
 8000ace:	f7ff fde3 	bl	8000698 <LL_GPIO_SetPinMode>
 8000ad2:	2390      	movs	r3, #144	; 0x90
 8000ad4:	05db      	lsls	r3, r3, #23
 8000ad6:	1c18      	adds	r0, r3, #0
 8000ad8:	2104      	movs	r1, #4
 8000ada:	2201      	movs	r2, #1
 8000adc:	f7ff fddc 	bl	8000698 <LL_GPIO_SetPinMode>
 8000ae0:	2390      	movs	r3, #144	; 0x90
 8000ae2:	05db      	lsls	r3, r3, #23
 8000ae4:	1c18      	adds	r0, r3, #0
 8000ae6:	2108      	movs	r1, #8
 8000ae8:	2201      	movs	r2, #1
 8000aea:	f7ff fdd5 	bl	8000698 <LL_GPIO_SetPinMode>
 8000aee:	2390      	movs	r3, #144	; 0x90
 8000af0:	05db      	lsls	r3, r3, #23
 8000af2:	1c18      	adds	r0, r3, #0
 8000af4:	2110      	movs	r1, #16
 8000af6:	2201      	movs	r2, #1
 8000af8:	f7ff fdce 	bl	8000698 <LL_GPIO_SetPinMode>
 8000afc:	2390      	movs	r3, #144	; 0x90
 8000afe:	05db      	lsls	r3, r3, #23
 8000b00:	1c18      	adds	r0, r3, #0
 8000b02:	2120      	movs	r1, #32
 8000b04:	2201      	movs	r2, #1
 8000b06:	f7ff fdc7 	bl	8000698 <LL_GPIO_SetPinMode>
 8000b0a:	2390      	movs	r3, #144	; 0x90
 8000b0c:	05db      	lsls	r3, r3, #23
 8000b0e:	1c18      	adds	r0, r3, #0
 8000b10:	2140      	movs	r1, #64	; 0x40
 8000b12:	2201      	movs	r2, #1
 8000b14:	f7ff fdc0 	bl	8000698 <LL_GPIO_SetPinMode>
 8000b18:	2390      	movs	r3, #144	; 0x90
 8000b1a:	05db      	lsls	r3, r3, #23
 8000b1c:	1c18      	adds	r0, r3, #0
 8000b1e:	2180      	movs	r1, #128	; 0x80
 8000b20:	2201      	movs	r2, #1
 8000b22:	f7ff fdb9 	bl	8000698 <LL_GPIO_SetPinMode>
 8000b26:	46bd      	mov	sp, r7
 8000b28:	bd80      	pop	{r7, pc}
 8000b2a:	46c0      	nop			; (mov r8, r8)
 8000b2c:	48000800 	.word	0x48000800

08000b30 <led_time>:
 8000b30:	b580      	push	{r7, lr}
 8000b32:	b082      	sub	sp, #8
 8000b34:	af00      	add	r7, sp, #0
 8000b36:	6078      	str	r0, [r7, #4]
 8000b38:	6039      	str	r1, [r7, #0]
 8000b3a:	4b74      	ldr	r3, [pc, #464]	; (8000d0c <led_time+0x1dc>)
 8000b3c:	681b      	ldr	r3, [r3, #0]
 8000b3e:	1c5a      	adds	r2, r3, #1
 8000b40:	4b72      	ldr	r3, [pc, #456]	; (8000d0c <led_time+0x1dc>)
 8000b42:	601a      	str	r2, [r3, #0]
 8000b44:	4b71      	ldr	r3, [pc, #452]	; (8000d0c <led_time+0x1dc>)
 8000b46:	681b      	ldr	r3, [r3, #0]
 8000b48:	2b01      	cmp	r3, #1
 8000b4a:	d000      	beq.n	8000b4e <led_time+0x1e>
 8000b4c:	e0db      	b.n	8000d06 <led_time+0x1d6>
 8000b4e:	4b70      	ldr	r3, [pc, #448]	; (8000d10 <led_time+0x1e0>)
 8000b50:	681b      	ldr	r3, [r3, #0]
 8000b52:	2b00      	cmp	r3, #0
 8000b54:	d050      	beq.n	8000bf8 <led_time+0xc8>
 8000b56:	4b6f      	ldr	r3, [pc, #444]	; (8000d14 <led_time+0x1e4>)
 8000b58:	681a      	ldr	r2, [r3, #0]
 8000b5a:	4b6f      	ldr	r3, [pc, #444]	; (8000d18 <led_time+0x1e8>)
 8000b5c:	0092      	lsls	r2, r2, #2
 8000b5e:	58d3      	ldr	r3, [r2, r3]
 8000b60:	4a6e      	ldr	r2, [pc, #440]	; (8000d1c <led_time+0x1ec>)
 8000b62:	1c10      	adds	r0, r2, #0
 8000b64:	1c19      	adds	r1, r3, #0
 8000b66:	f7ff fdcf 	bl	8000708 <LL_GPIO_WriteOutputPort>
 8000b6a:	4b6a      	ldr	r3, [pc, #424]	; (8000d14 <led_time+0x1e4>)
 8000b6c:	681b      	ldr	r3, [r3, #0]
 8000b6e:	2b00      	cmp	r3, #0
 8000b70:	d107      	bne.n	8000b82 <led_time+0x52>
 8000b72:	4b6b      	ldr	r3, [pc, #428]	; (8000d20 <led_time+0x1f0>)
 8000b74:	685a      	ldr	r2, [r3, #4]
 8000b76:	2390      	movs	r3, #144	; 0x90
 8000b78:	05db      	lsls	r3, r3, #23
 8000b7a:	1c18      	adds	r0, r3, #0
 8000b7c:	1c11      	adds	r1, r2, #0
 8000b7e:	f7ff fdc3 	bl	8000708 <LL_GPIO_WriteOutputPort>
 8000b82:	4b64      	ldr	r3, [pc, #400]	; (8000d14 <led_time+0x1e4>)
 8000b84:	681b      	ldr	r3, [r3, #0]
 8000b86:	2b01      	cmp	r3, #1
 8000b88:	d107      	bne.n	8000b9a <led_time+0x6a>
 8000b8a:	4b65      	ldr	r3, [pc, #404]	; (8000d20 <led_time+0x1f0>)
 8000b8c:	681a      	ldr	r2, [r3, #0]
 8000b8e:	2390      	movs	r3, #144	; 0x90
 8000b90:	05db      	lsls	r3, r3, #23
 8000b92:	1c18      	adds	r0, r3, #0
 8000b94:	1c11      	adds	r1, r2, #0
 8000b96:	f7ff fdb7 	bl	8000708 <LL_GPIO_WriteOutputPort>
 8000b9a:	4b5e      	ldr	r3, [pc, #376]	; (8000d14 <led_time+0x1e4>)
 8000b9c:	681b      	ldr	r3, [r3, #0]
 8000b9e:	2b02      	cmp	r3, #2
 8000ba0:	d10f      	bne.n	8000bc2 <led_time+0x92>
 8000ba2:	683b      	ldr	r3, [r7, #0]
 8000ba4:	1c18      	adds	r0, r3, #0
 8000ba6:	210a      	movs	r1, #10
 8000ba8:	f7ff fc5a 	bl	8000460 <__aeabi_idivmod>
 8000bac:	1c0b      	adds	r3, r1, #0
 8000bae:	1c1a      	adds	r2, r3, #0
 8000bb0:	4b5c      	ldr	r3, [pc, #368]	; (8000d24 <led_time+0x1f4>)
 8000bb2:	0092      	lsls	r2, r2, #2
 8000bb4:	58d2      	ldr	r2, [r2, r3]
 8000bb6:	2390      	movs	r3, #144	; 0x90
 8000bb8:	05db      	lsls	r3, r3, #23
 8000bba:	1c18      	adds	r0, r3, #0
 8000bbc:	1c11      	adds	r1, r2, #0
 8000bbe:	f7ff fda3 	bl	8000708 <LL_GPIO_WriteOutputPort>
 8000bc2:	4b54      	ldr	r3, [pc, #336]	; (8000d14 <led_time+0x1e4>)
 8000bc4:	681b      	ldr	r3, [r3, #0]
 8000bc6:	2b03      	cmp	r3, #3
 8000bc8:	d000      	beq.n	8000bcc <led_time+0x9c>
 8000bca:	e08d      	b.n	8000ce8 <led_time+0x1b8>
 8000bcc:	683b      	ldr	r3, [r7, #0]
 8000bce:	1c18      	adds	r0, r3, #0
 8000bd0:	210a      	movs	r1, #10
 8000bd2:	f7ff fb5f 	bl	8000294 <__aeabi_idiv>
 8000bd6:	1c03      	adds	r3, r0, #0
 8000bd8:	1c18      	adds	r0, r3, #0
 8000bda:	210a      	movs	r1, #10
 8000bdc:	f7ff fc40 	bl	8000460 <__aeabi_idivmod>
 8000be0:	1c0b      	adds	r3, r1, #0
 8000be2:	1c1a      	adds	r2, r3, #0
 8000be4:	4b4f      	ldr	r3, [pc, #316]	; (8000d24 <led_time+0x1f4>)
 8000be6:	0092      	lsls	r2, r2, #2
 8000be8:	58d2      	ldr	r2, [r2, r3]
 8000bea:	2390      	movs	r3, #144	; 0x90
 8000bec:	05db      	lsls	r3, r3, #23
 8000bee:	1c18      	adds	r0, r3, #0
 8000bf0:	1c11      	adds	r1, r2, #0
 8000bf2:	f7ff fd89 	bl	8000708 <LL_GPIO_WriteOutputPort>
 8000bf6:	e077      	b.n	8000ce8 <led_time+0x1b8>
 8000bf8:	4b4b      	ldr	r3, [pc, #300]	; (8000d28 <led_time+0x1f8>)
 8000bfa:	681b      	ldr	r3, [r3, #0]
 8000bfc:	2b7d      	cmp	r3, #125	; 0x7d
 8000bfe:	dc4e      	bgt.n	8000c9e <led_time+0x16e>
 8000c00:	4b44      	ldr	r3, [pc, #272]	; (8000d14 <led_time+0x1e4>)
 8000c02:	681a      	ldr	r2, [r3, #0]
 8000c04:	4b44      	ldr	r3, [pc, #272]	; (8000d18 <led_time+0x1e8>)
 8000c06:	0092      	lsls	r2, r2, #2
 8000c08:	58d3      	ldr	r3, [r2, r3]
 8000c0a:	4a44      	ldr	r2, [pc, #272]	; (8000d1c <led_time+0x1ec>)
 8000c0c:	1c10      	adds	r0, r2, #0
 8000c0e:	1c19      	adds	r1, r3, #0
 8000c10:	f7ff fd7a 	bl	8000708 <LL_GPIO_WriteOutputPort>
 8000c14:	4b3f      	ldr	r3, [pc, #252]	; (8000d14 <led_time+0x1e4>)
 8000c16:	681b      	ldr	r3, [r3, #0]
 8000c18:	2b00      	cmp	r3, #0
 8000c1a:	d107      	bne.n	8000c2c <led_time+0xfc>
 8000c1c:	4b40      	ldr	r3, [pc, #256]	; (8000d20 <led_time+0x1f0>)
 8000c1e:	685a      	ldr	r2, [r3, #4]
 8000c20:	2390      	movs	r3, #144	; 0x90
 8000c22:	05db      	lsls	r3, r3, #23
 8000c24:	1c18      	adds	r0, r3, #0
 8000c26:	1c11      	adds	r1, r2, #0
 8000c28:	f7ff fd6e 	bl	8000708 <LL_GPIO_WriteOutputPort>
 8000c2c:	4b39      	ldr	r3, [pc, #228]	; (8000d14 <led_time+0x1e4>)
 8000c2e:	681b      	ldr	r3, [r3, #0]
 8000c30:	2b01      	cmp	r3, #1
 8000c32:	d107      	bne.n	8000c44 <led_time+0x114>
 8000c34:	4b3a      	ldr	r3, [pc, #232]	; (8000d20 <led_time+0x1f0>)
 8000c36:	681a      	ldr	r2, [r3, #0]
 8000c38:	2390      	movs	r3, #144	; 0x90
 8000c3a:	05db      	lsls	r3, r3, #23
 8000c3c:	1c18      	adds	r0, r3, #0
 8000c3e:	1c11      	adds	r1, r2, #0
 8000c40:	f7ff fd62 	bl	8000708 <LL_GPIO_WriteOutputPort>
 8000c44:	4b33      	ldr	r3, [pc, #204]	; (8000d14 <led_time+0x1e4>)
 8000c46:	681b      	ldr	r3, [r3, #0]
 8000c48:	2b02      	cmp	r3, #2
 8000c4a:	d10f      	bne.n	8000c6c <led_time+0x13c>
 8000c4c:	687b      	ldr	r3, [r7, #4]
 8000c4e:	1c18      	adds	r0, r3, #0
 8000c50:	210a      	movs	r1, #10
 8000c52:	f7ff fc05 	bl	8000460 <__aeabi_idivmod>
 8000c56:	1c0b      	adds	r3, r1, #0
 8000c58:	1c1a      	adds	r2, r3, #0
 8000c5a:	4b32      	ldr	r3, [pc, #200]	; (8000d24 <led_time+0x1f4>)
 8000c5c:	0092      	lsls	r2, r2, #2
 8000c5e:	58d2      	ldr	r2, [r2, r3]
 8000c60:	2390      	movs	r3, #144	; 0x90
 8000c62:	05db      	lsls	r3, r3, #23
 8000c64:	1c18      	adds	r0, r3, #0
 8000c66:	1c11      	adds	r1, r2, #0
 8000c68:	f7ff fd4e 	bl	8000708 <LL_GPIO_WriteOutputPort>
 8000c6c:	4b29      	ldr	r3, [pc, #164]	; (8000d14 <led_time+0x1e4>)
 8000c6e:	681b      	ldr	r3, [r3, #0]
 8000c70:	2b03      	cmp	r3, #3
 8000c72:	d114      	bne.n	8000c9e <led_time+0x16e>
 8000c74:	687b      	ldr	r3, [r7, #4]
 8000c76:	1c18      	adds	r0, r3, #0
 8000c78:	210a      	movs	r1, #10
 8000c7a:	f7ff fb0b 	bl	8000294 <__aeabi_idiv>
 8000c7e:	1c03      	adds	r3, r0, #0
 8000c80:	1c18      	adds	r0, r3, #0
 8000c82:	210a      	movs	r1, #10
 8000c84:	f7ff fbec 	bl	8000460 <__aeabi_idivmod>
 8000c88:	1c0b      	adds	r3, r1, #0
 8000c8a:	1c1a      	adds	r2, r3, #0
 8000c8c:	4b25      	ldr	r3, [pc, #148]	; (8000d24 <led_time+0x1f4>)
 8000c8e:	0092      	lsls	r2, r2, #2
 8000c90:	58d2      	ldr	r2, [r2, r3]
 8000c92:	2390      	movs	r3, #144	; 0x90
 8000c94:	05db      	lsls	r3, r3, #23
 8000c96:	1c18      	adds	r0, r3, #0
 8000c98:	1c11      	adds	r1, r2, #0
 8000c9a:	f7ff fd35 	bl	8000708 <LL_GPIO_WriteOutputPort>
 8000c9e:	4b22      	ldr	r3, [pc, #136]	; (8000d28 <led_time+0x1f8>)
 8000ca0:	681b      	ldr	r3, [r3, #0]
 8000ca2:	2b7d      	cmp	r3, #125	; 0x7d
 8000ca4:	dd0b      	ble.n	8000cbe <led_time+0x18e>
 8000ca6:	4b1d      	ldr	r3, [pc, #116]	; (8000d1c <led_time+0x1ec>)
 8000ca8:	1c18      	adds	r0, r3, #0
 8000caa:	21ff      	movs	r1, #255	; 0xff
 8000cac:	f7ff fd2c 	bl	8000708 <LL_GPIO_WriteOutputPort>
 8000cb0:	4b1d      	ldr	r3, [pc, #116]	; (8000d28 <led_time+0x1f8>)
 8000cb2:	681b      	ldr	r3, [r3, #0]
 8000cb4:	2bc8      	cmp	r3, #200	; 0xc8
 8000cb6:	d102      	bne.n	8000cbe <led_time+0x18e>
 8000cb8:	4b1b      	ldr	r3, [pc, #108]	; (8000d28 <led_time+0x1f8>)
 8000cba:	2200      	movs	r2, #0
 8000cbc:	601a      	str	r2, [r3, #0]
 8000cbe:	4b1b      	ldr	r3, [pc, #108]	; (8000d2c <led_time+0x1fc>)
 8000cc0:	681b      	ldr	r3, [r3, #0]
 8000cc2:	1c5a      	adds	r2, r3, #1
 8000cc4:	4b19      	ldr	r3, [pc, #100]	; (8000d2c <led_time+0x1fc>)
 8000cc6:	601a      	str	r2, [r3, #0]
 8000cc8:	4b17      	ldr	r3, [pc, #92]	; (8000d28 <led_time+0x1f8>)
 8000cca:	681b      	ldr	r3, [r3, #0]
 8000ccc:	1c5a      	adds	r2, r3, #1
 8000cce:	4b16      	ldr	r3, [pc, #88]	; (8000d28 <led_time+0x1f8>)
 8000cd0:	601a      	str	r2, [r3, #0]
 8000cd2:	4b16      	ldr	r3, [pc, #88]	; (8000d2c <led_time+0x1fc>)
 8000cd4:	681b      	ldr	r3, [r3, #0]
 8000cd6:	4a16      	ldr	r2, [pc, #88]	; (8000d30 <led_time+0x200>)
 8000cd8:	4293      	cmp	r3, r2
 8000cda:	d105      	bne.n	8000ce8 <led_time+0x1b8>
 8000cdc:	4b0c      	ldr	r3, [pc, #48]	; (8000d10 <led_time+0x1e0>)
 8000cde:	2201      	movs	r2, #1
 8000ce0:	601a      	str	r2, [r3, #0]
 8000ce2:	4b12      	ldr	r3, [pc, #72]	; (8000d2c <led_time+0x1fc>)
 8000ce4:	2200      	movs	r2, #0
 8000ce6:	601a      	str	r2, [r3, #0]
 8000ce8:	4b0a      	ldr	r3, [pc, #40]	; (8000d14 <led_time+0x1e4>)
 8000cea:	681b      	ldr	r3, [r3, #0]
 8000cec:	1c5a      	adds	r2, r3, #1
 8000cee:	4b09      	ldr	r3, [pc, #36]	; (8000d14 <led_time+0x1e4>)
 8000cf0:	601a      	str	r2, [r3, #0]
 8000cf2:	4b08      	ldr	r3, [pc, #32]	; (8000d14 <led_time+0x1e4>)
 8000cf4:	681b      	ldr	r3, [r3, #0]
 8000cf6:	2b04      	cmp	r3, #4
 8000cf8:	d102      	bne.n	8000d00 <led_time+0x1d0>
 8000cfa:	4b06      	ldr	r3, [pc, #24]	; (8000d14 <led_time+0x1e4>)
 8000cfc:	2200      	movs	r2, #0
 8000cfe:	601a      	str	r2, [r3, #0]
 8000d00:	4b02      	ldr	r3, [pc, #8]	; (8000d0c <led_time+0x1dc>)
 8000d02:	2200      	movs	r2, #0
 8000d04:	601a      	str	r2, [r3, #0]
 8000d06:	46bd      	mov	sp, r7
 8000d08:	b002      	add	sp, #8
 8000d0a:	bd80      	pop	{r7, pc}
 8000d0c:	200004c4 	.word	0x200004c4
 8000d10:	20000040 	.word	0x20000040
 8000d14:	200004f4 	.word	0x200004f4
 8000d18:	20000030 	.word	0x20000030
 8000d1c:	48000800 	.word	0x48000800
 8000d20:	20000028 	.word	0x20000028
 8000d24:	20000000 	.word	0x20000000
 8000d28:	200004b8 	.word	0x200004b8
 8000d2c:	20000538 	.word	0x20000538
 8000d30:	00001388 	.word	0x00001388

08000d34 <led_button>:
 8000d34:	b580      	push	{r7, lr}
 8000d36:	b084      	sub	sp, #16
 8000d38:	af00      	add	r7, sp, #0
 8000d3a:	60f8      	str	r0, [r7, #12]
 8000d3c:	60b9      	str	r1, [r7, #8]
 8000d3e:	607a      	str	r2, [r7, #4]
 8000d40:	687b      	ldr	r3, [r7, #4]
 8000d42:	2b01      	cmp	r3, #1
 8000d44:	d113      	bne.n	8000d6e <led_button+0x3a>
 8000d46:	4b16      	ldr	r3, [pc, #88]	; (8000da0 <led_button+0x6c>)
 8000d48:	681b      	ldr	r3, [r3, #0]
 8000d4a:	2b01      	cmp	r3, #1
 8000d4c:	d105      	bne.n	8000d5a <led_button+0x26>
 8000d4e:	68bb      	ldr	r3, [r7, #8]
 8000d50:	60fb      	str	r3, [r7, #12]
 8000d52:	4b13      	ldr	r3, [pc, #76]	; (8000da0 <led_button+0x6c>)
 8000d54:	2200      	movs	r2, #0
 8000d56:	601a      	str	r2, [r3, #0]
 8000d58:	e01c      	b.n	8000d94 <led_button+0x60>
 8000d5a:	4b12      	ldr	r3, [pc, #72]	; (8000da4 <led_button+0x70>)
 8000d5c:	2200      	movs	r2, #0
 8000d5e:	601a      	str	r2, [r3, #0]
 8000d60:	68fb      	ldr	r3, [r7, #12]
 8000d62:	2b27      	cmp	r3, #39	; 0x27
 8000d64:	dc16      	bgt.n	8000d94 <led_button+0x60>
 8000d66:	68fb      	ldr	r3, [r7, #12]
 8000d68:	3301      	adds	r3, #1
 8000d6a:	60fb      	str	r3, [r7, #12]
 8000d6c:	e012      	b.n	8000d94 <led_button+0x60>
 8000d6e:	4b0c      	ldr	r3, [pc, #48]	; (8000da0 <led_button+0x6c>)
 8000d70:	681b      	ldr	r3, [r3, #0]
 8000d72:	2b01      	cmp	r3, #1
 8000d74:	d105      	bne.n	8000d82 <led_button+0x4e>
 8000d76:	68bb      	ldr	r3, [r7, #8]
 8000d78:	60fb      	str	r3, [r7, #12]
 8000d7a:	4b09      	ldr	r3, [pc, #36]	; (8000da0 <led_button+0x6c>)
 8000d7c:	2200      	movs	r2, #0
 8000d7e:	601a      	str	r2, [r3, #0]
 8000d80:	e008      	b.n	8000d94 <led_button+0x60>
 8000d82:	4b08      	ldr	r3, [pc, #32]	; (8000da4 <led_button+0x70>)
 8000d84:	2200      	movs	r2, #0
 8000d86:	601a      	str	r2, [r3, #0]
 8000d88:	68fb      	ldr	r3, [r7, #12]
 8000d8a:	2b0a      	cmp	r3, #10
 8000d8c:	dd02      	ble.n	8000d94 <led_button+0x60>
 8000d8e:	68fb      	ldr	r3, [r7, #12]
 8000d90:	3b01      	subs	r3, #1
 8000d92:	60fb      	str	r3, [r7, #12]
 8000d94:	68fb      	ldr	r3, [r7, #12]
 8000d96:	1c18      	adds	r0, r3, #0
 8000d98:	46bd      	mov	sp, r7
 8000d9a:	b004      	add	sp, #16
 8000d9c:	bd80      	pop	{r7, pc}
 8000d9e:	46c0      	nop			; (mov r8, r8)
 8000da0:	20000040 	.word	0x20000040
 8000da4:	20000538 	.word	0x20000538

08000da8 <pwm_serv_init>:
 8000da8:	b590      	push	{r4, r7, lr}
 8000daa:	b095      	sub	sp, #84	; 0x54
 8000dac:	af00      	add	r7, sp, #0
 8000dae:	60f8      	str	r0, [r7, #12]
 8000db0:	60b9      	str	r1, [r7, #8]
 8000db2:	607a      	str	r2, [r7, #4]
 8000db4:	603b      	str	r3, [r7, #0]
 8000db6:	68bb      	ldr	r3, [r7, #8]
 8000db8:	4a50      	ldr	r2, [pc, #320]	; (8000efc <pwm_serv_init+0x154>)
 8000dba:	4293      	cmp	r3, r2
 8000dbc:	d104      	bne.n	8000dc8 <pwm_serv_init+0x20>
 8000dbe:	2380      	movs	r3, #128	; 0x80
 8000dc0:	031b      	lsls	r3, r3, #12
 8000dc2:	1c18      	adds	r0, r3, #0
 8000dc4:	f7ff fc26 	bl	8000614 <LL_AHB1_GRP1_EnableClock>
 8000dc8:	68ba      	ldr	r2, [r7, #8]
 8000dca:	2390      	movs	r3, #144	; 0x90
 8000dcc:	05db      	lsls	r3, r3, #23
 8000dce:	429a      	cmp	r2, r3
 8000dd0:	d104      	bne.n	8000ddc <pwm_serv_init+0x34>
 8000dd2:	2380      	movs	r3, #128	; 0x80
 8000dd4:	029b      	lsls	r3, r3, #10
 8000dd6:	1c18      	adds	r0, r3, #0
 8000dd8:	f7ff fc1c 	bl	8000614 <LL_AHB1_GRP1_EnableClock>
 8000ddc:	6e3b      	ldr	r3, [r7, #96]	; 0x60
 8000dde:	1c18      	adds	r0, r3, #0
 8000de0:	f7ff fc2e 	bl	8000640 <LL_APB1_GRP1_EnableClock>
 8000de4:	68ba      	ldr	r2, [r7, #8]
 8000de6:	687b      	ldr	r3, [r7, #4]
 8000de8:	1c10      	adds	r0, r2, #0
 8000dea:	1c19      	adds	r1, r3, #0
 8000dec:	2202      	movs	r2, #2
 8000dee:	f7ff fc53 	bl	8000698 <LL_GPIO_SetPinMode>
 8000df2:	68ba      	ldr	r2, [r7, #8]
 8000df4:	687b      	ldr	r3, [r7, #4]
 8000df6:	1c10      	adds	r0, r2, #0
 8000df8:	1c19      	adds	r1, r3, #0
 8000dfa:	2202      	movs	r2, #2
 8000dfc:	f7ff fc68 	bl	80006d0 <LL_GPIO_SetPinPull>
 8000e00:	2332      	movs	r3, #50	; 0x32
 8000e02:	64fb      	str	r3, [r7, #76]	; 0x4c
 8000e04:	4b3e      	ldr	r3, [pc, #248]	; (8000f00 <pwm_serv_init+0x158>)
 8000e06:	64bb      	str	r3, [r7, #72]	; 0x48
 8000e08:	2314      	movs	r3, #20
 8000e0a:	18fb      	adds	r3, r7, r3
 8000e0c:	1c18      	adds	r0, r3, #0
 8000e0e:	f000 fac5 	bl	800139c <LL_TIM_StructInit>
 8000e12:	2314      	movs	r3, #20
 8000e14:	18fb      	adds	r3, r7, r3
 8000e16:	2200      	movs	r2, #0
 8000e18:	60da      	str	r2, [r3, #12]
 8000e1a:	4b3a      	ldr	r3, [pc, #232]	; (8000f04 <pwm_serv_init+0x15c>)
 8000e1c:	681a      	ldr	r2, [r3, #0]
 8000e1e:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 8000e20:	429a      	cmp	r2, r3
 8000e22:	d30a      	bcc.n	8000e3a <pwm_serv_init+0x92>
 8000e24:	4b37      	ldr	r3, [pc, #220]	; (8000f04 <pwm_serv_init+0x15c>)
 8000e26:	681b      	ldr	r3, [r3, #0]
 8000e28:	1c18      	adds	r0, r3, #0
 8000e2a:	6cb9      	ldr	r1, [r7, #72]	; 0x48
 8000e2c:	f7ff f9a2 	bl	8000174 <__aeabi_uidiv>
 8000e30:	1c03      	adds	r3, r0, #0
 8000e32:	b29b      	uxth	r3, r3
 8000e34:	3b01      	subs	r3, #1
 8000e36:	b29a      	uxth	r2, r3
 8000e38:	e000      	b.n	8000e3c <pwm_serv_init+0x94>
 8000e3a:	2200      	movs	r2, #0
 8000e3c:	2314      	movs	r3, #20
 8000e3e:	18fb      	adds	r3, r7, r3
 8000e40:	801a      	strh	r2, [r3, #0]
 8000e42:	4b30      	ldr	r3, [pc, #192]	; (8000f04 <pwm_serv_init+0x15c>)
 8000e44:	681a      	ldr	r2, [r3, #0]
 8000e46:	2314      	movs	r3, #20
 8000e48:	18fb      	adds	r3, r7, r3
 8000e4a:	881b      	ldrh	r3, [r3, #0]
 8000e4c:	3301      	adds	r3, #1
 8000e4e:	1c10      	adds	r0, r2, #0
 8000e50:	1c19      	adds	r1, r3, #0
 8000e52:	f7ff f98f 	bl	8000174 <__aeabi_uidiv>
 8000e56:	1c03      	adds	r3, r0, #0
 8000e58:	1e1a      	subs	r2, r3, #0
 8000e5a:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8000e5c:	429a      	cmp	r2, r3
 8000e5e:	d30e      	bcc.n	8000e7e <pwm_serv_init+0xd6>
 8000e60:	4b28      	ldr	r3, [pc, #160]	; (8000f04 <pwm_serv_init+0x15c>)
 8000e62:	6819      	ldr	r1, [r3, #0]
 8000e64:	2314      	movs	r3, #20
 8000e66:	18fb      	adds	r3, r7, r3
 8000e68:	881b      	ldrh	r3, [r3, #0]
 8000e6a:	3301      	adds	r3, #1
 8000e6c:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 8000e6e:	4353      	muls	r3, r2
 8000e70:	1c08      	adds	r0, r1, #0
 8000e72:	1c19      	adds	r1, r3, #0
 8000e74:	f7ff f97e 	bl	8000174 <__aeabi_uidiv>
 8000e78:	1c03      	adds	r3, r0, #0
 8000e7a:	1e5a      	subs	r2, r3, #1
 8000e7c:	e000      	b.n	8000e80 <pwm_serv_init+0xd8>
 8000e7e:	2200      	movs	r2, #0
 8000e80:	2314      	movs	r3, #20
 8000e82:	18fb      	adds	r3, r7, r3
 8000e84:	609a      	str	r2, [r3, #8]
 8000e86:	2314      	movs	r3, #20
 8000e88:	18fb      	adds	r3, r7, r3
 8000e8a:	2200      	movs	r2, #0
 8000e8c:	605a      	str	r2, [r3, #4]
 8000e8e:	683a      	ldr	r2, [r7, #0]
 8000e90:	2314      	movs	r3, #20
 8000e92:	18fb      	adds	r3, r7, r3
 8000e94:	1c10      	adds	r0, r2, #0
 8000e96:	1c19      	adds	r1, r3, #0
 8000e98:	f000 fa98 	bl	80013cc <LL_TIM_Init>
 8000e9c:	2328      	movs	r3, #40	; 0x28
 8000e9e:	18fb      	adds	r3, r7, r3
 8000ea0:	1c18      	adds	r0, r3, #0
 8000ea2:	f000 fb17 	bl	80014d4 <LL_TIM_OC_StructInit>
 8000ea6:	2328      	movs	r3, #40	; 0x28
 8000ea8:	18fb      	adds	r3, r7, r3
 8000eaa:	2260      	movs	r2, #96	; 0x60
 8000eac:	601a      	str	r2, [r3, #0]
 8000eae:	2328      	movs	r3, #40	; 0x28
 8000eb0:	18fb      	adds	r3, r7, r3
 8000eb2:	2201      	movs	r2, #1
 8000eb4:	605a      	str	r2, [r3, #4]
 8000eb6:	2328      	movs	r3, #40	; 0x28
 8000eb8:	18fb      	adds	r3, r7, r3
 8000eba:	2200      	movs	r2, #0
 8000ebc:	611a      	str	r2, [r3, #16]
 8000ebe:	2328      	movs	r3, #40	; 0x28
 8000ec0:	18fb      	adds	r3, r7, r3
 8000ec2:	2200      	movs	r2, #0
 8000ec4:	60da      	str	r2, [r3, #12]
 8000ec6:	6839      	ldr	r1, [r7, #0]
 8000ec8:	6e7a      	ldr	r2, [r7, #100]	; 0x64
 8000eca:	2328      	movs	r3, #40	; 0x28
 8000ecc:	18fb      	adds	r3, r7, r3
 8000ece:	1c08      	adds	r0, r1, #0
 8000ed0:	1c11      	adds	r1, r2, #0
 8000ed2:	1c1a      	adds	r2, r3, #0
 8000ed4:	f000 fb1e 	bl	8001514 <LL_TIM_OC_Init>
 8000ed8:	683b      	ldr	r3, [r7, #0]
 8000eda:	1c18      	adds	r0, r3, #0
 8000edc:	f7ff fd38 	bl	8000950 <LL_TIM_EnableCounter>
 8000ee0:	68fb      	ldr	r3, [r7, #12]
 8000ee2:	2228      	movs	r2, #40	; 0x28
 8000ee4:	18ba      	adds	r2, r7, r2
 8000ee6:	ca13      	ldmia	r2!, {r0, r1, r4}
 8000ee8:	c313      	stmia	r3!, {r0, r1, r4}
 8000eea:	ca13      	ldmia	r2!, {r0, r1, r4}
 8000eec:	c313      	stmia	r3!, {r0, r1, r4}
 8000eee:	ca03      	ldmia	r2!, {r0, r1}
 8000ef0:	c303      	stmia	r3!, {r0, r1}
 8000ef2:	68f8      	ldr	r0, [r7, #12]
 8000ef4:	46bd      	mov	sp, r7
 8000ef6:	b015      	add	sp, #84	; 0x54
 8000ef8:	bd90      	pop	{r4, r7, pc}
 8000efa:	46c0      	nop			; (mov r8, r8)
 8000efc:	48000800 	.word	0x48000800
 8000f00:	000186a0 	.word	0x000186a0
 8000f04:	20000044 	.word	0x20000044

08000f08 <pwm_serv_set>:
 8000f08:	b084      	sub	sp, #16
 8000f0a:	b598      	push	{r3, r4, r7, lr}
 8000f0c:	af00      	add	r7, sp, #0
 8000f0e:	2410      	movs	r4, #16
 8000f10:	193c      	adds	r4, r7, r4
 8000f12:	6020      	str	r0, [r4, #0]
 8000f14:	6061      	str	r1, [r4, #4]
 8000f16:	60a2      	str	r2, [r4, #8]
 8000f18:	60e3      	str	r3, [r4, #12]
 8000f1a:	4b12      	ldr	r3, [pc, #72]	; (8000f64 <pwm_serv_set+0x5c>)
 8000f1c:	1c18      	adds	r0, r3, #0
 8000f1e:	f7ff fd25 	bl	800096c <LL_TIM_GetAutoReload>
 8000f22:	1c03      	adds	r3, r0, #0
 8000f24:	3301      	adds	r3, #1
 8000f26:	1c18      	adds	r0, r3, #0
 8000f28:	23fa      	movs	r3, #250	; 0xfa
 8000f2a:	0099      	lsls	r1, r3, #2
 8000f2c:	f7ff f922 	bl	8000174 <__aeabi_uidiv>
 8000f30:	1c03      	adds	r3, r0, #0
 8000f32:	1c1a      	adds	r2, r3, #0
 8000f34:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8000f36:	331a      	adds	r3, #26
 8000f38:	435a      	muls	r2, r3
 8000f3a:	2310      	movs	r3, #16
 8000f3c:	18fb      	adds	r3, r7, r3
 8000f3e:	60da      	str	r2, [r3, #12]
 8000f40:	4a08      	ldr	r2, [pc, #32]	; (8000f64 <pwm_serv_set+0x5c>)
 8000f42:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8000f44:	2110      	movs	r1, #16
 8000f46:	187c      	adds	r4, r7, r1
 8000f48:	1c10      	adds	r0, r2, #0
 8000f4a:	1c19      	adds	r1, r3, #0
 8000f4c:	1c22      	adds	r2, r4, #0
 8000f4e:	f000 fae1 	bl	8001514 <LL_TIM_OC_Init>
 8000f52:	4b04      	ldr	r3, [pc, #16]	; (8000f64 <pwm_serv_set+0x5c>)
 8000f54:	1c18      	adds	r0, r3, #0
 8000f56:	f7ff fcfb 	bl	8000950 <LL_TIM_EnableCounter>
 8000f5a:	46bd      	mov	sp, r7
 8000f5c:	bc98      	pop	{r3, r4, r7}
 8000f5e:	bc08      	pop	{r3}
 8000f60:	b004      	add	sp, #16
 8000f62:	4718      	bx	r3
 8000f64:	40000400 	.word	0x40000400

08000f68 <rcc_init>:
 8000f68:	b580      	push	{r7, lr}
 8000f6a:	af00      	add	r7, sp, #0
 8000f6c:	2001      	movs	r0, #1
 8000f6e:	f7ff fc9d 	bl	80008ac <LL_FLASH_SetLatency>
 8000f72:	f7ff fbd5 	bl	8000720 <LL_RCC_HSI_Enable>
 8000f76:	46c0      	nop			; (mov r8, r8)
 8000f78:	f7ff fbde 	bl	8000738 <LL_RCC_HSI_IsReady>
 8000f7c:	1e03      	subs	r3, r0, #0
 8000f7e:	2b01      	cmp	r3, #1
 8000f80:	d1fa      	bne.n	8000f78 <rcc_init+0x10>
 8000f82:	23a0      	movs	r3, #160	; 0xa0
 8000f84:	039b      	lsls	r3, r3, #14
 8000f86:	2000      	movs	r0, #0
 8000f88:	1c19      	adds	r1, r3, #0
 8000f8a:	f7ff fc45 	bl	8000818 <LL_RCC_PLL_ConfigDomain_SYS>
 8000f8e:	f7ff fc25 	bl	80007dc <LL_RCC_PLL_Enable>
 8000f92:	46c0      	nop			; (mov r8, r8)
 8000f94:	f7ff fc30 	bl	80007f8 <LL_RCC_PLL_IsReady>
 8000f98:	1e03      	subs	r3, r0, #0
 8000f9a:	2b01      	cmp	r3, #1
 8000f9c:	d1fa      	bne.n	8000f94 <rcc_init+0x2c>
 8000f9e:	2000      	movs	r0, #0
 8000fa0:	f7ff fbf6 	bl	8000790 <LL_RCC_SetAHBPrescaler>
 8000fa4:	2002      	movs	r0, #2
 8000fa6:	f7ff fbd5 	bl	8000754 <LL_RCC_SetSysClkSource>
 8000faa:	46c0      	nop			; (mov r8, r8)
 8000fac:	f7ff fbe4 	bl	8000778 <LL_RCC_GetSysClkSource>
 8000fb0:	1e03      	subs	r3, r0, #0
 8000fb2:	2b08      	cmp	r3, #8
 8000fb4:	d1fa      	bne.n	8000fac <rcc_init+0x44>
 8000fb6:	2000      	movs	r0, #0
 8000fb8:	f7ff fbfc 	bl	80007b4 <LL_RCC_SetAPB1Prescaler>
 8000fbc:	4b04      	ldr	r3, [pc, #16]	; (8000fd0 <rcc_init+0x68>)
 8000fbe:	1c18      	adds	r0, r3, #0
 8000fc0:	f7ff fb04 	bl	80005cc <SysTick_Config>
 8000fc4:	4b03      	ldr	r3, [pc, #12]	; (8000fd4 <rcc_init+0x6c>)
 8000fc6:	4a04      	ldr	r2, [pc, #16]	; (8000fd8 <rcc_init+0x70>)
 8000fc8:	601a      	str	r2, [r3, #0]
 8000fca:	46bd      	mov	sp, r7
 8000fcc:	bd80      	pop	{r7, pc}
 8000fce:	46c0      	nop			; (mov r8, r8)
 8000fd0:	0000bb80 	.word	0x0000bb80
 8000fd4:	20000044 	.word	0x20000044
 8000fd8:	02dc6c00 	.word	0x02dc6c00

08000fdc <exti_init>:
 8000fdc:	b580      	push	{r7, lr}
 8000fde:	af00      	add	r7, sp, #0
 8000fe0:	2380      	movs	r3, #128	; 0x80
 8000fe2:	02db      	lsls	r3, r3, #11
 8000fe4:	1c18      	adds	r0, r3, #0
 8000fe6:	f7ff fb15 	bl	8000614 <LL_AHB1_GRP1_EnableClock>
 8000fea:	4b1f      	ldr	r3, [pc, #124]	; (8001068 <exti_init+0x8c>)
 8000fec:	1c18      	adds	r0, r3, #0
 8000fee:	2101      	movs	r1, #1
 8000ff0:	2200      	movs	r2, #0
 8000ff2:	f7ff fb51 	bl	8000698 <LL_GPIO_SetPinMode>
 8000ff6:	4b1c      	ldr	r3, [pc, #112]	; (8001068 <exti_init+0x8c>)
 8000ff8:	1c18      	adds	r0, r3, #0
 8000ffa:	2101      	movs	r1, #1
 8000ffc:	2202      	movs	r2, #2
 8000ffe:	f7ff fb67 	bl	80006d0 <LL_GPIO_SetPinPull>
 8001002:	2380      	movs	r3, #128	; 0x80
 8001004:	02db      	lsls	r3, r3, #11
 8001006:	1c18      	adds	r0, r3, #0
 8001008:	f7ff fb04 	bl	8000614 <LL_AHB1_GRP1_EnableClock>
 800100c:	4b16      	ldr	r3, [pc, #88]	; (8001068 <exti_init+0x8c>)
 800100e:	1c18      	adds	r0, r3, #0
 8001010:	2102      	movs	r1, #2
 8001012:	2200      	movs	r2, #0
 8001014:	f7ff fb40 	bl	8000698 <LL_GPIO_SetPinMode>
 8001018:	4b13      	ldr	r3, [pc, #76]	; (8001068 <exti_init+0x8c>)
 800101a:	1c18      	adds	r0, r3, #0
 800101c:	2102      	movs	r1, #2
 800101e:	2202      	movs	r2, #2
 8001020:	f7ff fb56 	bl	80006d0 <LL_GPIO_SetPinPull>
 8001024:	2001      	movs	r0, #1
 8001026:	f7ff fb21 	bl	800066c <LL_APB1_GRP2_EnableClock>
 800102a:	2001      	movs	r0, #1
 800102c:	2100      	movs	r1, #0
 800102e:	f7ff fc17 	bl	8000860 <LL_SYSCFG_SetEXTISource>
 8001032:	2001      	movs	r0, #1
 8001034:	f7ff fc4c 	bl	80008d0 <LL_EXTI_EnableIT_0_31>
 8001038:	2001      	movs	r0, #1
 800103a:	f7ff fc59 	bl	80008f0 <LL_EXTI_EnableFallingTrig_0_31>
 800103e:	2380      	movs	r3, #128	; 0x80
 8001040:	02db      	lsls	r3, r3, #11
 8001042:	2001      	movs	r0, #1
 8001044:	1c19      	adds	r1, r3, #0
 8001046:	f7ff fc0b 	bl	8000860 <LL_SYSCFG_SetEXTISource>
 800104a:	2002      	movs	r0, #2
 800104c:	f7ff fc40 	bl	80008d0 <LL_EXTI_EnableIT_0_31>
 8001050:	2002      	movs	r0, #2
 8001052:	f7ff fc4d 	bl	80008f0 <LL_EXTI_EnableFallingTrig_0_31>
 8001056:	2005      	movs	r0, #5
 8001058:	f7ff fa38 	bl	80004cc <NVIC_EnableIRQ>
 800105c:	2005      	movs	r0, #5
 800105e:	2100      	movs	r1, #0
 8001060:	f7ff fa4a 	bl	80004f8 <NVIC_SetPriority>
 8001064:	46bd      	mov	sp, r7
 8001066:	bd80      	pop	{r7, pc}
 8001068:	48000400 	.word	0x48000400

0800106c <NMI_Handler>:
 800106c:	b580      	push	{r7, lr}
 800106e:	af00      	add	r7, sp, #0
 8001070:	46bd      	mov	sp, r7
 8001072:	bd80      	pop	{r7, pc}

08001074 <HardFault_Handler>:
 8001074:	b580      	push	{r7, lr}
 8001076:	af00      	add	r7, sp, #0
 8001078:	e7fe      	b.n	8001078 <HardFault_Handler+0x4>
 800107a:	46c0      	nop			; (mov r8, r8)

0800107c <SVC_Handler>:
 800107c:	b580      	push	{r7, lr}
 800107e:	af00      	add	r7, sp, #0
 8001080:	46bd      	mov	sp, r7
 8001082:	bd80      	pop	{r7, pc}

08001084 <PendSV_Handler>:
 8001084:	b580      	push	{r7, lr}
 8001086:	af00      	add	r7, sp, #0
 8001088:	46bd      	mov	sp, r7
 800108a:	bd80      	pop	{r7, pc}

0800108c <SysTick_Handler>:
 800108c:	b5b0      	push	{r4, r5, r7, lr}
 800108e:	b08a      	sub	sp, #40	; 0x28
 8001090:	af08      	add	r7, sp, #32
 8001092:	4b2a      	ldr	r3, [pc, #168]	; (800113c <SysTick_Handler+0xb0>)
 8001094:	681b      	ldr	r3, [r3, #0]
 8001096:	1c1a      	adds	r2, r3, #0
 8001098:	4b29      	ldr	r3, [pc, #164]	; (8001140 <SysTick_Handler+0xb4>)
 800109a:	681b      	ldr	r3, [r3, #0]
 800109c:	1c10      	adds	r0, r2, #0
 800109e:	1c19      	adds	r1, r3, #0
 80010a0:	f7ff fd46 	bl	8000b30 <led_time>
 80010a4:	4b27      	ldr	r3, [pc, #156]	; (8001144 <SysTick_Handler+0xb8>)
 80010a6:	681b      	ldr	r3, [r3, #0]
 80010a8:	2b64      	cmp	r3, #100	; 0x64
 80010aa:	d13e      	bne.n	800112a <SysTick_Handler+0x9e>
 80010ac:	4b23      	ldr	r3, [pc, #140]	; (800113c <SysTick_Handler+0xb0>)
 80010ae:	681b      	ldr	r3, [r3, #0]
 80010b0:	1c19      	adds	r1, r3, #0
 80010b2:	4b23      	ldr	r3, [pc, #140]	; (8001140 <SysTick_Handler+0xb4>)
 80010b4:	681b      	ldr	r3, [r3, #0]
 80010b6:	1c1a      	adds	r2, r3, #0
 80010b8:	4c23      	ldr	r4, [pc, #140]	; (8001148 <SysTick_Handler+0xbc>)
 80010ba:	1c3b      	adds	r3, r7, #0
 80010bc:	1c18      	adds	r0, r3, #0
 80010be:	f7ff fc5f 	bl	8000980 <logic_serv>
 80010c2:	1c3a      	adds	r2, r7, #0
 80010c4:	1c23      	adds	r3, r4, #0
 80010c6:	ca03      	ldmia	r2!, {r0, r1}
 80010c8:	c303      	stmia	r3!, {r0, r1}
 80010ca:	4b1f      	ldr	r3, [pc, #124]	; (8001148 <SysTick_Handler+0xbc>)
 80010cc:	681a      	ldr	r2, [r3, #0]
 80010ce:	4b1f      	ldr	r3, [pc, #124]	; (800114c <SysTick_Handler+0xc0>)
 80010d0:	491f      	ldr	r1, [pc, #124]	; (8001150 <SysTick_Handler+0xc4>)
 80010d2:	9104      	str	r1, [sp, #16]
 80010d4:	2110      	movs	r1, #16
 80010d6:	9105      	str	r1, [sp, #20]
 80010d8:	9206      	str	r2, [sp, #24]
 80010da:	466a      	mov	r2, sp
 80010dc:	1c11      	adds	r1, r2, #0
 80010de:	1c1a      	adds	r2, r3, #0
 80010e0:	3210      	adds	r2, #16
 80010e2:	ca31      	ldmia	r2!, {r0, r4, r5}
 80010e4:	c131      	stmia	r1!, {r0, r4, r5}
 80010e6:	6812      	ldr	r2, [r2, #0]
 80010e8:	600a      	str	r2, [r1, #0]
 80010ea:	6818      	ldr	r0, [r3, #0]
 80010ec:	6859      	ldr	r1, [r3, #4]
 80010ee:	689a      	ldr	r2, [r3, #8]
 80010f0:	68db      	ldr	r3, [r3, #12]
 80010f2:	f7ff ff09 	bl	8000f08 <pwm_serv_set>
 80010f6:	4b14      	ldr	r3, [pc, #80]	; (8001148 <SysTick_Handler+0xbc>)
 80010f8:	685a      	ldr	r2, [r3, #4]
 80010fa:	4b16      	ldr	r3, [pc, #88]	; (8001154 <SysTick_Handler+0xc8>)
 80010fc:	4914      	ldr	r1, [pc, #80]	; (8001150 <SysTick_Handler+0xc4>)
 80010fe:	9104      	str	r1, [sp, #16]
 8001100:	2180      	movs	r1, #128	; 0x80
 8001102:	0049      	lsls	r1, r1, #1
 8001104:	9105      	str	r1, [sp, #20]
 8001106:	9206      	str	r2, [sp, #24]
 8001108:	466a      	mov	r2, sp
 800110a:	1c11      	adds	r1, r2, #0
 800110c:	1c1a      	adds	r2, r3, #0
 800110e:	3210      	adds	r2, #16
 8001110:	ca31      	ldmia	r2!, {r0, r4, r5}
 8001112:	c131      	stmia	r1!, {r0, r4, r5}
 8001114:	6812      	ldr	r2, [r2, #0]
 8001116:	600a      	str	r2, [r1, #0]
 8001118:	6818      	ldr	r0, [r3, #0]
 800111a:	6859      	ldr	r1, [r3, #4]
 800111c:	689a      	ldr	r2, [r3, #8]
 800111e:	68db      	ldr	r3, [r3, #12]
 8001120:	f7ff fef2 	bl	8000f08 <pwm_serv_set>
 8001124:	4b07      	ldr	r3, [pc, #28]	; (8001144 <SysTick_Handler+0xb8>)
 8001126:	2200      	movs	r2, #0
 8001128:	601a      	str	r2, [r3, #0]
 800112a:	4b06      	ldr	r3, [pc, #24]	; (8001144 <SysTick_Handler+0xb8>)
 800112c:	681b      	ldr	r3, [r3, #0]
 800112e:	1c5a      	adds	r2, r3, #1
 8001130:	4b04      	ldr	r3, [pc, #16]	; (8001144 <SysTick_Handler+0xb8>)
 8001132:	601a      	str	r2, [r3, #0]
 8001134:	46bd      	mov	sp, r7
 8001136:	b002      	add	sp, #8
 8001138:	bdb0      	pop	{r4, r5, r7, pc}
 800113a:	46c0      	nop			; (mov r8, r8)
 800113c:	200004ec 	.word	0x200004ec
 8001140:	2000048c 	.word	0x2000048c
 8001144:	200004f0 	.word	0x200004f0
 8001148:	200004bc 	.word	0x200004bc
 800114c:	20000490 	.word	0x20000490
 8001150:	40000400 	.word	0x40000400
 8001154:	20000518 	.word	0x20000518

08001158 <EXTI0_1_IRQHandler>:
 8001158:	b580      	push	{r7, lr}
 800115a:	af00      	add	r7, sp, #0
 800115c:	2001      	movs	r0, #1
 800115e:	f7ff fbd7 	bl	8000910 <LL_EXTI_IsActiveFlag_0_31>
 8001162:	1e03      	subs	r3, r0, #0
 8001164:	d010      	beq.n	8001188 <EXTI0_1_IRQHandler+0x30>
 8001166:	4b14      	ldr	r3, [pc, #80]	; (80011b8 <EXTI0_1_IRQHandler+0x60>)
 8001168:	681b      	ldr	r3, [r3, #0]
 800116a:	1c1a      	adds	r2, r3, #0
 800116c:	4b13      	ldr	r3, [pc, #76]	; (80011bc <EXTI0_1_IRQHandler+0x64>)
 800116e:	681b      	ldr	r3, [r3, #0]
 8001170:	1c10      	adds	r0, r2, #0
 8001172:	1c19      	adds	r1, r3, #0
 8001174:	2201      	movs	r2, #1
 8001176:	f7ff fddd 	bl	8000d34 <led_button>
 800117a:	1c03      	adds	r3, r0, #0
 800117c:	1c1a      	adds	r2, r3, #0
 800117e:	4b0e      	ldr	r3, [pc, #56]	; (80011b8 <EXTI0_1_IRQHandler+0x60>)
 8001180:	601a      	str	r2, [r3, #0]
 8001182:	2001      	movs	r0, #1
 8001184:	f7ff fbd8 	bl	8000938 <LL_EXTI_ClearFlag_0_31>
 8001188:	2002      	movs	r0, #2
 800118a:	f7ff fbc1 	bl	8000910 <LL_EXTI_IsActiveFlag_0_31>
 800118e:	1e03      	subs	r3, r0, #0
 8001190:	d010      	beq.n	80011b4 <EXTI0_1_IRQHandler+0x5c>
 8001192:	4b09      	ldr	r3, [pc, #36]	; (80011b8 <EXTI0_1_IRQHandler+0x60>)
 8001194:	681b      	ldr	r3, [r3, #0]
 8001196:	1c1a      	adds	r2, r3, #0
 8001198:	4b08      	ldr	r3, [pc, #32]	; (80011bc <EXTI0_1_IRQHandler+0x64>)
 800119a:	681b      	ldr	r3, [r3, #0]
 800119c:	1c10      	adds	r0, r2, #0
 800119e:	1c19      	adds	r1, r3, #0
 80011a0:	2200      	movs	r2, #0
 80011a2:	f7ff fdc7 	bl	8000d34 <led_button>
 80011a6:	1c03      	adds	r3, r0, #0
 80011a8:	1c1a      	adds	r2, r3, #0
 80011aa:	4b03      	ldr	r3, [pc, #12]	; (80011b8 <EXTI0_1_IRQHandler+0x60>)
 80011ac:	601a      	str	r2, [r3, #0]
 80011ae:	2002      	movs	r0, #2
 80011b0:	f7ff fbc2 	bl	8000938 <LL_EXTI_ClearFlag_0_31>
 80011b4:	46bd      	mov	sp, r7
 80011b6:	bd80      	pop	{r7, pc}
 80011b8:	200004ec 	.word	0x200004ec
 80011bc:	2000048c 	.word	0x2000048c

080011c0 <main>:
 80011c0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80011c2:	b08b      	sub	sp, #44	; 0x2c
 80011c4:	af02      	add	r7, sp, #8
 80011c6:	4b1d      	ldr	r3, [pc, #116]	; (800123c <main+0x7c>)
 80011c8:	221a      	movs	r2, #26
 80011ca:	601a      	str	r2, [r3, #0]
 80011cc:	f7ff fecc 	bl	8000f68 <rcc_init>
 80011d0:	f7ff ff04 	bl	8000fdc <exti_init>
 80011d4:	f7ff fc52 	bl	8000a7c <led_init>
 80011d8:	4c19      	ldr	r4, [pc, #100]	; (8001240 <main+0x80>)
 80011da:	1c3a      	adds	r2, r7, #0
 80011dc:	4919      	ldr	r1, [pc, #100]	; (8001244 <main+0x84>)
 80011de:	4d1a      	ldr	r5, [pc, #104]	; (8001248 <main+0x88>)
 80011e0:	2302      	movs	r3, #2
 80011e2:	9300      	str	r3, [sp, #0]
 80011e4:	2310      	movs	r3, #16
 80011e6:	9301      	str	r3, [sp, #4]
 80011e8:	1c10      	adds	r0, r2, #0
 80011ea:	2280      	movs	r2, #128	; 0x80
 80011ec:	1c2b      	adds	r3, r5, #0
 80011ee:	f7ff fddb 	bl	8000da8 <pwm_serv_init>
 80011f2:	1c3a      	adds	r2, r7, #0
 80011f4:	1c23      	adds	r3, r4, #0
 80011f6:	ca13      	ldmia	r2!, {r0, r1, r4}
 80011f8:	c313      	stmia	r3!, {r0, r1, r4}
 80011fa:	ca13      	ldmia	r2!, {r0, r1, r4}
 80011fc:	c313      	stmia	r3!, {r0, r1, r4}
 80011fe:	ca03      	ldmia	r2!, {r0, r1}
 8001200:	c303      	stmia	r3!, {r0, r1}
 8001202:	4c12      	ldr	r4, [pc, #72]	; (800124c <main+0x8c>)
 8001204:	1c39      	adds	r1, r7, #0
 8001206:	4e0f      	ldr	r6, [pc, #60]	; (8001244 <main+0x84>)
 8001208:	2380      	movs	r3, #128	; 0x80
 800120a:	005a      	lsls	r2, r3, #1
 800120c:	4d0e      	ldr	r5, [pc, #56]	; (8001248 <main+0x88>)
 800120e:	2302      	movs	r3, #2
 8001210:	9300      	str	r3, [sp, #0]
 8001212:	2380      	movs	r3, #128	; 0x80
 8001214:	005b      	lsls	r3, r3, #1
 8001216:	9301      	str	r3, [sp, #4]
 8001218:	1c08      	adds	r0, r1, #0
 800121a:	1c31      	adds	r1, r6, #0
 800121c:	1c2b      	adds	r3, r5, #0
 800121e:	f7ff fdc3 	bl	8000da8 <pwm_serv_init>
 8001222:	1c3a      	adds	r2, r7, #0
 8001224:	1c23      	adds	r3, r4, #0
 8001226:	ca13      	ldmia	r2!, {r0, r1, r4}
 8001228:	c313      	stmia	r3!, {r0, r1, r4}
 800122a:	ca13      	ldmia	r2!, {r0, r1, r4}
 800122c:	c313      	stmia	r3!, {r0, r1, r4}
 800122e:	ca03      	ldmia	r2!, {r0, r1}
 8001230:	c303      	stmia	r3!, {r0, r1}
 8001232:	2300      	movs	r3, #0
 8001234:	1c18      	adds	r0, r3, #0
 8001236:	46bd      	mov	sp, r7
 8001238:	b009      	add	sp, #36	; 0x24
 800123a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800123c:	2000048c 	.word	0x2000048c
 8001240:	20000490 	.word	0x20000490
 8001244:	48000800 	.word	0x48000800
 8001248:	40000400 	.word	0x40000400
 800124c:	20000518 	.word	0x20000518

08001250 <SystemInit>:
 8001250:	b580      	push	{r7, lr}
 8001252:	af00      	add	r7, sp, #0
 8001254:	4b1a      	ldr	r3, [pc, #104]	; (80012c0 <SystemInit+0x70>)
 8001256:	4a1a      	ldr	r2, [pc, #104]	; (80012c0 <SystemInit+0x70>)
 8001258:	6812      	ldr	r2, [r2, #0]
 800125a:	2101      	movs	r1, #1
 800125c:	430a      	orrs	r2, r1
 800125e:	601a      	str	r2, [r3, #0]
 8001260:	4b17      	ldr	r3, [pc, #92]	; (80012c0 <SystemInit+0x70>)
 8001262:	4a17      	ldr	r2, [pc, #92]	; (80012c0 <SystemInit+0x70>)
 8001264:	6852      	ldr	r2, [r2, #4]
 8001266:	4917      	ldr	r1, [pc, #92]	; (80012c4 <SystemInit+0x74>)
 8001268:	400a      	ands	r2, r1
 800126a:	605a      	str	r2, [r3, #4]
 800126c:	4b14      	ldr	r3, [pc, #80]	; (80012c0 <SystemInit+0x70>)
 800126e:	4a14      	ldr	r2, [pc, #80]	; (80012c0 <SystemInit+0x70>)
 8001270:	6812      	ldr	r2, [r2, #0]
 8001272:	4915      	ldr	r1, [pc, #84]	; (80012c8 <SystemInit+0x78>)
 8001274:	400a      	ands	r2, r1
 8001276:	601a      	str	r2, [r3, #0]
 8001278:	4b11      	ldr	r3, [pc, #68]	; (80012c0 <SystemInit+0x70>)
 800127a:	4a11      	ldr	r2, [pc, #68]	; (80012c0 <SystemInit+0x70>)
 800127c:	6812      	ldr	r2, [r2, #0]
 800127e:	4913      	ldr	r1, [pc, #76]	; (80012cc <SystemInit+0x7c>)
 8001280:	400a      	ands	r2, r1
 8001282:	601a      	str	r2, [r3, #0]
 8001284:	4b0e      	ldr	r3, [pc, #56]	; (80012c0 <SystemInit+0x70>)
 8001286:	4a0e      	ldr	r2, [pc, #56]	; (80012c0 <SystemInit+0x70>)
 8001288:	6852      	ldr	r2, [r2, #4]
 800128a:	4911      	ldr	r1, [pc, #68]	; (80012d0 <SystemInit+0x80>)
 800128c:	400a      	ands	r2, r1
 800128e:	605a      	str	r2, [r3, #4]
 8001290:	4b0b      	ldr	r3, [pc, #44]	; (80012c0 <SystemInit+0x70>)
 8001292:	4a0b      	ldr	r2, [pc, #44]	; (80012c0 <SystemInit+0x70>)
 8001294:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 8001296:	210f      	movs	r1, #15
 8001298:	438a      	bics	r2, r1
 800129a:	62da      	str	r2, [r3, #44]	; 0x2c
 800129c:	4b08      	ldr	r3, [pc, #32]	; (80012c0 <SystemInit+0x70>)
 800129e:	4a08      	ldr	r2, [pc, #32]	; (80012c0 <SystemInit+0x70>)
 80012a0:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80012a2:	490c      	ldr	r1, [pc, #48]	; (80012d4 <SystemInit+0x84>)
 80012a4:	400a      	ands	r2, r1
 80012a6:	631a      	str	r2, [r3, #48]	; 0x30
 80012a8:	4b05      	ldr	r3, [pc, #20]	; (80012c0 <SystemInit+0x70>)
 80012aa:	4a05      	ldr	r2, [pc, #20]	; (80012c0 <SystemInit+0x70>)
 80012ac:	6b52      	ldr	r2, [r2, #52]	; 0x34
 80012ae:	2101      	movs	r1, #1
 80012b0:	438a      	bics	r2, r1
 80012b2:	635a      	str	r2, [r3, #52]	; 0x34
 80012b4:	4b02      	ldr	r3, [pc, #8]	; (80012c0 <SystemInit+0x70>)
 80012b6:	2200      	movs	r2, #0
 80012b8:	609a      	str	r2, [r3, #8]
 80012ba:	46bd      	mov	sp, r7
 80012bc:	bd80      	pop	{r7, pc}
 80012be:	46c0      	nop			; (mov r8, r8)
 80012c0:	40021000 	.word	0x40021000
 80012c4:	f8ffb80c 	.word	0xf8ffb80c
 80012c8:	fef6ffff 	.word	0xfef6ffff
 80012cc:	fffbffff 	.word	0xfffbffff
 80012d0:	ffc0ffff 	.word	0xffc0ffff
 80012d4:	fffffeac 	.word	0xfffffeac

080012d8 <LL_TIM_SetPrescaler>:
 80012d8:	b580      	push	{r7, lr}
 80012da:	b082      	sub	sp, #8
 80012dc:	af00      	add	r7, sp, #0
 80012de:	6078      	str	r0, [r7, #4]
 80012e0:	6039      	str	r1, [r7, #0]
 80012e2:	687b      	ldr	r3, [r7, #4]
 80012e4:	683a      	ldr	r2, [r7, #0]
 80012e6:	629a      	str	r2, [r3, #40]	; 0x28
 80012e8:	46bd      	mov	sp, r7
 80012ea:	b002      	add	sp, #8
 80012ec:	bd80      	pop	{r7, pc}
 80012ee:	46c0      	nop			; (mov r8, r8)

080012f0 <LL_TIM_SetAutoReload>:
 80012f0:	b580      	push	{r7, lr}
 80012f2:	b082      	sub	sp, #8
 80012f4:	af00      	add	r7, sp, #0
 80012f6:	6078      	str	r0, [r7, #4]
 80012f8:	6039      	str	r1, [r7, #0]
 80012fa:	687b      	ldr	r3, [r7, #4]
 80012fc:	683a      	ldr	r2, [r7, #0]
 80012fe:	62da      	str	r2, [r3, #44]	; 0x2c
 8001300:	46bd      	mov	sp, r7
 8001302:	b002      	add	sp, #8
 8001304:	bd80      	pop	{r7, pc}
 8001306:	46c0      	nop			; (mov r8, r8)

08001308 <LL_TIM_SetRepetitionCounter>:
 8001308:	b580      	push	{r7, lr}
 800130a:	b082      	sub	sp, #8
 800130c:	af00      	add	r7, sp, #0
 800130e:	6078      	str	r0, [r7, #4]
 8001310:	6039      	str	r1, [r7, #0]
 8001312:	687b      	ldr	r3, [r7, #4]
 8001314:	683a      	ldr	r2, [r7, #0]
 8001316:	631a      	str	r2, [r3, #48]	; 0x30
 8001318:	46bd      	mov	sp, r7
 800131a:	b002      	add	sp, #8
 800131c:	bd80      	pop	{r7, pc}
 800131e:	46c0      	nop			; (mov r8, r8)

08001320 <LL_TIM_OC_SetCompareCH1>:
 8001320:	b580      	push	{r7, lr}
 8001322:	b082      	sub	sp, #8
 8001324:	af00      	add	r7, sp, #0
 8001326:	6078      	str	r0, [r7, #4]
 8001328:	6039      	str	r1, [r7, #0]
 800132a:	687b      	ldr	r3, [r7, #4]
 800132c:	683a      	ldr	r2, [r7, #0]
 800132e:	635a      	str	r2, [r3, #52]	; 0x34
 8001330:	46bd      	mov	sp, r7
 8001332:	b002      	add	sp, #8
 8001334:	bd80      	pop	{r7, pc}
 8001336:	46c0      	nop			; (mov r8, r8)

08001338 <LL_TIM_OC_SetCompareCH2>:
 8001338:	b580      	push	{r7, lr}
 800133a:	b082      	sub	sp, #8
 800133c:	af00      	add	r7, sp, #0
 800133e:	6078      	str	r0, [r7, #4]
 8001340:	6039      	str	r1, [r7, #0]
 8001342:	687b      	ldr	r3, [r7, #4]
 8001344:	683a      	ldr	r2, [r7, #0]
 8001346:	639a      	str	r2, [r3, #56]	; 0x38
 8001348:	46bd      	mov	sp, r7
 800134a:	b002      	add	sp, #8
 800134c:	bd80      	pop	{r7, pc}
 800134e:	46c0      	nop			; (mov r8, r8)

08001350 <LL_TIM_OC_SetCompareCH3>:
 8001350:	b580      	push	{r7, lr}
 8001352:	b082      	sub	sp, #8
 8001354:	af00      	add	r7, sp, #0
 8001356:	6078      	str	r0, [r7, #4]
 8001358:	6039      	str	r1, [r7, #0]
 800135a:	687b      	ldr	r3, [r7, #4]
 800135c:	683a      	ldr	r2, [r7, #0]
 800135e:	63da      	str	r2, [r3, #60]	; 0x3c
 8001360:	46bd      	mov	sp, r7
 8001362:	b002      	add	sp, #8
 8001364:	bd80      	pop	{r7, pc}
 8001366:	46c0      	nop			; (mov r8, r8)

08001368 <LL_TIM_OC_SetCompareCH4>:
 8001368:	b580      	push	{r7, lr}
 800136a:	b082      	sub	sp, #8
 800136c:	af00      	add	r7, sp, #0
 800136e:	6078      	str	r0, [r7, #4]
 8001370:	6039      	str	r1, [r7, #0]
 8001372:	687b      	ldr	r3, [r7, #4]
 8001374:	683a      	ldr	r2, [r7, #0]
 8001376:	641a      	str	r2, [r3, #64]	; 0x40
 8001378:	46bd      	mov	sp, r7
 800137a:	b002      	add	sp, #8
 800137c:	bd80      	pop	{r7, pc}
 800137e:	46c0      	nop			; (mov r8, r8)

08001380 <LL_TIM_GenerateEvent_UPDATE>:
 8001380:	b580      	push	{r7, lr}
 8001382:	b082      	sub	sp, #8
 8001384:	af00      	add	r7, sp, #0
 8001386:	6078      	str	r0, [r7, #4]
 8001388:	687b      	ldr	r3, [r7, #4]
 800138a:	695b      	ldr	r3, [r3, #20]
 800138c:	2201      	movs	r2, #1
 800138e:	431a      	orrs	r2, r3
 8001390:	687b      	ldr	r3, [r7, #4]
 8001392:	615a      	str	r2, [r3, #20]
 8001394:	46bd      	mov	sp, r7
 8001396:	b002      	add	sp, #8
 8001398:	bd80      	pop	{r7, pc}
 800139a:	46c0      	nop			; (mov r8, r8)

0800139c <LL_TIM_StructInit>:
 800139c:	b580      	push	{r7, lr}
 800139e:	b082      	sub	sp, #8
 80013a0:	af00      	add	r7, sp, #0
 80013a2:	6078      	str	r0, [r7, #4]
 80013a4:	687b      	ldr	r3, [r7, #4]
 80013a6:	2200      	movs	r2, #0
 80013a8:	801a      	strh	r2, [r3, #0]
 80013aa:	687b      	ldr	r3, [r7, #4]
 80013ac:	2200      	movs	r2, #0
 80013ae:	605a      	str	r2, [r3, #4]
 80013b0:	687b      	ldr	r3, [r7, #4]
 80013b2:	2201      	movs	r2, #1
 80013b4:	4252      	negs	r2, r2
 80013b6:	609a      	str	r2, [r3, #8]
 80013b8:	687b      	ldr	r3, [r7, #4]
 80013ba:	2200      	movs	r2, #0
 80013bc:	60da      	str	r2, [r3, #12]
 80013be:	687b      	ldr	r3, [r7, #4]
 80013c0:	2200      	movs	r2, #0
 80013c2:	741a      	strb	r2, [r3, #16]
 80013c4:	46bd      	mov	sp, r7
 80013c6:	b002      	add	sp, #8
 80013c8:	bd80      	pop	{r7, pc}
 80013ca:	46c0      	nop			; (mov r8, r8)

080013cc <LL_TIM_Init>:
 80013cc:	b580      	push	{r7, lr}
 80013ce:	b084      	sub	sp, #16
 80013d0:	af00      	add	r7, sp, #0
 80013d2:	6078      	str	r0, [r7, #4]
 80013d4:	6039      	str	r1, [r7, #0]
 80013d6:	2300      	movs	r3, #0
 80013d8:	60fb      	str	r3, [r7, #12]
 80013da:	687b      	ldr	r3, [r7, #4]
 80013dc:	681b      	ldr	r3, [r3, #0]
 80013de:	60fb      	str	r3, [r7, #12]
 80013e0:	687b      	ldr	r3, [r7, #4]
 80013e2:	4a35      	ldr	r2, [pc, #212]	; (80014b8 <LL_TIM_Init+0xec>)
 80013e4:	4293      	cmp	r3, r2
 80013e6:	d008      	beq.n	80013fa <LL_TIM_Init+0x2e>
 80013e8:	687a      	ldr	r2, [r7, #4]
 80013ea:	2380      	movs	r3, #128	; 0x80
 80013ec:	05db      	lsls	r3, r3, #23
 80013ee:	429a      	cmp	r2, r3
 80013f0:	d003      	beq.n	80013fa <LL_TIM_Init+0x2e>
 80013f2:	687b      	ldr	r3, [r7, #4]
 80013f4:	4a31      	ldr	r2, [pc, #196]	; (80014bc <LL_TIM_Init+0xf0>)
 80013f6:	4293      	cmp	r3, r2
 80013f8:	d107      	bne.n	800140a <LL_TIM_Init+0x3e>
 80013fa:	68fb      	ldr	r3, [r7, #12]
 80013fc:	2270      	movs	r2, #112	; 0x70
 80013fe:	4393      	bics	r3, r2
 8001400:	1c1a      	adds	r2, r3, #0
 8001402:	683b      	ldr	r3, [r7, #0]
 8001404:	685b      	ldr	r3, [r3, #4]
 8001406:	4313      	orrs	r3, r2
 8001408:	60fb      	str	r3, [r7, #12]
 800140a:	687b      	ldr	r3, [r7, #4]
 800140c:	4a2a      	ldr	r2, [pc, #168]	; (80014b8 <LL_TIM_Init+0xec>)
 800140e:	4293      	cmp	r3, r2
 8001410:	d018      	beq.n	8001444 <LL_TIM_Init+0x78>
 8001412:	687a      	ldr	r2, [r7, #4]
 8001414:	2380      	movs	r3, #128	; 0x80
 8001416:	05db      	lsls	r3, r3, #23
 8001418:	429a      	cmp	r2, r3
 800141a:	d013      	beq.n	8001444 <LL_TIM_Init+0x78>
 800141c:	687b      	ldr	r3, [r7, #4]
 800141e:	4a27      	ldr	r2, [pc, #156]	; (80014bc <LL_TIM_Init+0xf0>)
 8001420:	4293      	cmp	r3, r2
 8001422:	d00f      	beq.n	8001444 <LL_TIM_Init+0x78>
 8001424:	687b      	ldr	r3, [r7, #4]
 8001426:	4a26      	ldr	r2, [pc, #152]	; (80014c0 <LL_TIM_Init+0xf4>)
 8001428:	4293      	cmp	r3, r2
 800142a:	d00b      	beq.n	8001444 <LL_TIM_Init+0x78>
 800142c:	687b      	ldr	r3, [r7, #4]
 800142e:	4a25      	ldr	r2, [pc, #148]	; (80014c4 <LL_TIM_Init+0xf8>)
 8001430:	4293      	cmp	r3, r2
 8001432:	d007      	beq.n	8001444 <LL_TIM_Init+0x78>
 8001434:	687b      	ldr	r3, [r7, #4]
 8001436:	4a24      	ldr	r2, [pc, #144]	; (80014c8 <LL_TIM_Init+0xfc>)
 8001438:	4293      	cmp	r3, r2
 800143a:	d003      	beq.n	8001444 <LL_TIM_Init+0x78>
 800143c:	687b      	ldr	r3, [r7, #4]
 800143e:	4a23      	ldr	r2, [pc, #140]	; (80014cc <LL_TIM_Init+0x100>)
 8001440:	4293      	cmp	r3, r2
 8001442:	d106      	bne.n	8001452 <LL_TIM_Init+0x86>
 8001444:	68fb      	ldr	r3, [r7, #12]
 8001446:	4a22      	ldr	r2, [pc, #136]	; (80014d0 <LL_TIM_Init+0x104>)
 8001448:	401a      	ands	r2, r3
 800144a:	683b      	ldr	r3, [r7, #0]
 800144c:	68db      	ldr	r3, [r3, #12]
 800144e:	4313      	orrs	r3, r2
 8001450:	60fb      	str	r3, [r7, #12]
 8001452:	687b      	ldr	r3, [r7, #4]
 8001454:	68fa      	ldr	r2, [r7, #12]
 8001456:	601a      	str	r2, [r3, #0]
 8001458:	683b      	ldr	r3, [r7, #0]
 800145a:	689b      	ldr	r3, [r3, #8]
 800145c:	687a      	ldr	r2, [r7, #4]
 800145e:	1c10      	adds	r0, r2, #0
 8001460:	1c19      	adds	r1, r3, #0
 8001462:	f7ff ff45 	bl	80012f0 <LL_TIM_SetAutoReload>
 8001466:	683b      	ldr	r3, [r7, #0]
 8001468:	881b      	ldrh	r3, [r3, #0]
 800146a:	1c1a      	adds	r2, r3, #0
 800146c:	687b      	ldr	r3, [r7, #4]
 800146e:	1c18      	adds	r0, r3, #0
 8001470:	1c11      	adds	r1, r2, #0
 8001472:	f7ff ff31 	bl	80012d8 <LL_TIM_SetPrescaler>
 8001476:	687b      	ldr	r3, [r7, #4]
 8001478:	4a0f      	ldr	r2, [pc, #60]	; (80014b8 <LL_TIM_Init+0xec>)
 800147a:	4293      	cmp	r3, r2
 800147c:	d00b      	beq.n	8001496 <LL_TIM_Init+0xca>
 800147e:	687b      	ldr	r3, [r7, #4]
 8001480:	4a10      	ldr	r2, [pc, #64]	; (80014c4 <LL_TIM_Init+0xf8>)
 8001482:	4293      	cmp	r3, r2
 8001484:	d007      	beq.n	8001496 <LL_TIM_Init+0xca>
 8001486:	687b      	ldr	r3, [r7, #4]
 8001488:	4a0f      	ldr	r2, [pc, #60]	; (80014c8 <LL_TIM_Init+0xfc>)
 800148a:	4293      	cmp	r3, r2
 800148c:	d003      	beq.n	8001496 <LL_TIM_Init+0xca>
 800148e:	687b      	ldr	r3, [r7, #4]
 8001490:	4a0e      	ldr	r2, [pc, #56]	; (80014cc <LL_TIM_Init+0x100>)
 8001492:	4293      	cmp	r3, r2
 8001494:	d107      	bne.n	80014a6 <LL_TIM_Init+0xda>
 8001496:	683b      	ldr	r3, [r7, #0]
 8001498:	7c1b      	ldrb	r3, [r3, #16]
 800149a:	1c1a      	adds	r2, r3, #0
 800149c:	687b      	ldr	r3, [r7, #4]
 800149e:	1c18      	adds	r0, r3, #0
 80014a0:	1c11      	adds	r1, r2, #0
 80014a2:	f7ff ff31 	bl	8001308 <LL_TIM_SetRepetitionCounter>
 80014a6:	687b      	ldr	r3, [r7, #4]
 80014a8:	1c18      	adds	r0, r3, #0
 80014aa:	f7ff ff69 	bl	8001380 <LL_TIM_GenerateEvent_UPDATE>
 80014ae:	2301      	movs	r3, #1
 80014b0:	1c18      	adds	r0, r3, #0
 80014b2:	46bd      	mov	sp, r7
 80014b4:	b004      	add	sp, #16
 80014b6:	bd80      	pop	{r7, pc}
 80014b8:	40012c00 	.word	0x40012c00
 80014bc:	40000400 	.word	0x40000400
 80014c0:	40002000 	.word	0x40002000
 80014c4:	40014000 	.word	0x40014000
 80014c8:	40014400 	.word	0x40014400
 80014cc:	40014800 	.word	0x40014800
 80014d0:	fffffcff 	.word	0xfffffcff

080014d4 <LL_TIM_OC_StructInit>:
 80014d4:	b580      	push	{r7, lr}
 80014d6:	b082      	sub	sp, #8
 80014d8:	af00      	add	r7, sp, #0
 80014da:	6078      	str	r0, [r7, #4]
 80014dc:	687b      	ldr	r3, [r7, #4]
 80014de:	2200      	movs	r2, #0
 80014e0:	601a      	str	r2, [r3, #0]
 80014e2:	687b      	ldr	r3, [r7, #4]
 80014e4:	2200      	movs	r2, #0
 80014e6:	605a      	str	r2, [r3, #4]
 80014e8:	687b      	ldr	r3, [r7, #4]
 80014ea:	2200      	movs	r2, #0
 80014ec:	609a      	str	r2, [r3, #8]
 80014ee:	687b      	ldr	r3, [r7, #4]
 80014f0:	2200      	movs	r2, #0
 80014f2:	60da      	str	r2, [r3, #12]
 80014f4:	687b      	ldr	r3, [r7, #4]
 80014f6:	2200      	movs	r2, #0
 80014f8:	611a      	str	r2, [r3, #16]
 80014fa:	687b      	ldr	r3, [r7, #4]
 80014fc:	2200      	movs	r2, #0
 80014fe:	615a      	str	r2, [r3, #20]
 8001500:	687b      	ldr	r3, [r7, #4]
 8001502:	2200      	movs	r2, #0
 8001504:	619a      	str	r2, [r3, #24]
 8001506:	687b      	ldr	r3, [r7, #4]
 8001508:	2200      	movs	r2, #0
 800150a:	61da      	str	r2, [r3, #28]
 800150c:	46bd      	mov	sp, r7
 800150e:	b002      	add	sp, #8
 8001510:	bd80      	pop	{r7, pc}
 8001512:	46c0      	nop			; (mov r8, r8)

08001514 <LL_TIM_OC_Init>:
 8001514:	b590      	push	{r4, r7, lr}
 8001516:	b087      	sub	sp, #28
 8001518:	af00      	add	r7, sp, #0
 800151a:	60f8      	str	r0, [r7, #12]
 800151c:	60b9      	str	r1, [r7, #8]
 800151e:	607a      	str	r2, [r7, #4]
 8001520:	2317      	movs	r3, #23
 8001522:	18fb      	adds	r3, r7, r3
 8001524:	2200      	movs	r2, #0
 8001526:	701a      	strb	r2, [r3, #0]
 8001528:	68bb      	ldr	r3, [r7, #8]
 800152a:	2b10      	cmp	r3, #16
 800152c:	d017      	beq.n	800155e <LL_TIM_OC_Init+0x4a>
 800152e:	d802      	bhi.n	8001536 <LL_TIM_OC_Init+0x22>
 8001530:	2b01      	cmp	r3, #1
 8001532:	d009      	beq.n	8001548 <LL_TIM_OC_Init+0x34>
 8001534:	e034      	b.n	80015a0 <LL_TIM_OC_Init+0x8c>
 8001536:	2280      	movs	r2, #128	; 0x80
 8001538:	0052      	lsls	r2, r2, #1
 800153a:	4293      	cmp	r3, r2
 800153c:	d01a      	beq.n	8001574 <LL_TIM_OC_Init+0x60>
 800153e:	2280      	movs	r2, #128	; 0x80
 8001540:	0152      	lsls	r2, r2, #5
 8001542:	4293      	cmp	r3, r2
 8001544:	d021      	beq.n	800158a <LL_TIM_OC_Init+0x76>
 8001546:	e02b      	b.n	80015a0 <LL_TIM_OC_Init+0x8c>
 8001548:	2317      	movs	r3, #23
 800154a:	18fc      	adds	r4, r7, r3
 800154c:	68fa      	ldr	r2, [r7, #12]
 800154e:	687b      	ldr	r3, [r7, #4]
 8001550:	1c10      	adds	r0, r2, #0
 8001552:	1c19      	adds	r1, r3, #0
 8001554:	f000 f82c 	bl	80015b0 <OC1Config>
 8001558:	1c03      	adds	r3, r0, #0
 800155a:	7023      	strb	r3, [r4, #0]
 800155c:	e020      	b.n	80015a0 <LL_TIM_OC_Init+0x8c>
 800155e:	2317      	movs	r3, #23
 8001560:	18fc      	adds	r4, r7, r3
 8001562:	68fa      	ldr	r2, [r7, #12]
 8001564:	687b      	ldr	r3, [r7, #4]
 8001566:	1c10      	adds	r0, r2, #0
 8001568:	1c19      	adds	r1, r3, #0
 800156a:	f000 f8ab 	bl	80016c4 <OC2Config>
 800156e:	1c03      	adds	r3, r0, #0
 8001570:	7023      	strb	r3, [r4, #0]
 8001572:	e015      	b.n	80015a0 <LL_TIM_OC_Init+0x8c>
 8001574:	2317      	movs	r3, #23
 8001576:	18fc      	adds	r4, r7, r3
 8001578:	68fa      	ldr	r2, [r7, #12]
 800157a:	687b      	ldr	r3, [r7, #4]
 800157c:	1c10      	adds	r0, r2, #0
 800157e:	1c19      	adds	r1, r3, #0
 8001580:	f000 f930 	bl	80017e4 <OC3Config>
 8001584:	1c03      	adds	r3, r0, #0
 8001586:	7023      	strb	r3, [r4, #0]
 8001588:	e00a      	b.n	80015a0 <LL_TIM_OC_Init+0x8c>
 800158a:	2317      	movs	r3, #23
 800158c:	18fc      	adds	r4, r7, r3
 800158e:	68fa      	ldr	r2, [r7, #12]
 8001590:	687b      	ldr	r3, [r7, #4]
 8001592:	1c10      	adds	r0, r2, #0
 8001594:	1c19      	adds	r1, r3, #0
 8001596:	f000 f9b5 	bl	8001904 <OC4Config>
 800159a:	1c03      	adds	r3, r0, #0
 800159c:	7023      	strb	r3, [r4, #0]
 800159e:	46c0      	nop			; (mov r8, r8)
 80015a0:	2317      	movs	r3, #23
 80015a2:	18fb      	adds	r3, r7, r3
 80015a4:	781b      	ldrb	r3, [r3, #0]
 80015a6:	1c18      	adds	r0, r3, #0
 80015a8:	46bd      	mov	sp, r7
 80015aa:	b007      	add	sp, #28
 80015ac:	bd90      	pop	{r4, r7, pc}
 80015ae:	46c0      	nop			; (mov r8, r8)

080015b0 <OC1Config>:
 80015b0:	b580      	push	{r7, lr}
 80015b2:	b086      	sub	sp, #24
 80015b4:	af00      	add	r7, sp, #0
 80015b6:	6078      	str	r0, [r7, #4]
 80015b8:	6039      	str	r1, [r7, #0]
 80015ba:	2300      	movs	r3, #0
 80015bc:	60fb      	str	r3, [r7, #12]
 80015be:	2300      	movs	r3, #0
 80015c0:	617b      	str	r3, [r7, #20]
 80015c2:	2300      	movs	r3, #0
 80015c4:	613b      	str	r3, [r7, #16]
 80015c6:	687b      	ldr	r3, [r7, #4]
 80015c8:	6a1b      	ldr	r3, [r3, #32]
 80015ca:	2201      	movs	r2, #1
 80015cc:	4393      	bics	r3, r2
 80015ce:	1c1a      	adds	r2, r3, #0
 80015d0:	687b      	ldr	r3, [r7, #4]
 80015d2:	621a      	str	r2, [r3, #32]
 80015d4:	687b      	ldr	r3, [r7, #4]
 80015d6:	6a1b      	ldr	r3, [r3, #32]
 80015d8:	617b      	str	r3, [r7, #20]
 80015da:	687b      	ldr	r3, [r7, #4]
 80015dc:	685b      	ldr	r3, [r3, #4]
 80015de:	613b      	str	r3, [r7, #16]
 80015e0:	687b      	ldr	r3, [r7, #4]
 80015e2:	699b      	ldr	r3, [r3, #24]
 80015e4:	60fb      	str	r3, [r7, #12]
 80015e6:	68fb      	ldr	r3, [r7, #12]
 80015e8:	2203      	movs	r2, #3
 80015ea:	4393      	bics	r3, r2
 80015ec:	60fb      	str	r3, [r7, #12]
 80015ee:	68fb      	ldr	r3, [r7, #12]
 80015f0:	2270      	movs	r2, #112	; 0x70
 80015f2:	4393      	bics	r3, r2
 80015f4:	1c1a      	adds	r2, r3, #0
 80015f6:	683b      	ldr	r3, [r7, #0]
 80015f8:	681b      	ldr	r3, [r3, #0]
 80015fa:	4313      	orrs	r3, r2
 80015fc:	60fb      	str	r3, [r7, #12]
 80015fe:	697b      	ldr	r3, [r7, #20]
 8001600:	2202      	movs	r2, #2
 8001602:	4393      	bics	r3, r2
 8001604:	1c1a      	adds	r2, r3, #0
 8001606:	683b      	ldr	r3, [r7, #0]
 8001608:	691b      	ldr	r3, [r3, #16]
 800160a:	4313      	orrs	r3, r2
 800160c:	617b      	str	r3, [r7, #20]
 800160e:	697b      	ldr	r3, [r7, #20]
 8001610:	2201      	movs	r2, #1
 8001612:	4393      	bics	r3, r2
 8001614:	1c1a      	adds	r2, r3, #0
 8001616:	683b      	ldr	r3, [r7, #0]
 8001618:	685b      	ldr	r3, [r3, #4]
 800161a:	4313      	orrs	r3, r2
 800161c:	617b      	str	r3, [r7, #20]
 800161e:	687b      	ldr	r3, [r7, #4]
 8001620:	4a22      	ldr	r2, [pc, #136]	; (80016ac <OC1Config+0xfc>)
 8001622:	4293      	cmp	r3, r2
 8001624:	d00b      	beq.n	800163e <OC1Config+0x8e>
 8001626:	687b      	ldr	r3, [r7, #4]
 8001628:	4a21      	ldr	r2, [pc, #132]	; (80016b0 <OC1Config+0x100>)
 800162a:	4293      	cmp	r3, r2
 800162c:	d007      	beq.n	800163e <OC1Config+0x8e>
 800162e:	687b      	ldr	r3, [r7, #4]
 8001630:	4a20      	ldr	r2, [pc, #128]	; (80016b4 <OC1Config+0x104>)
 8001632:	4293      	cmp	r3, r2
 8001634:	d003      	beq.n	800163e <OC1Config+0x8e>
 8001636:	687b      	ldr	r3, [r7, #4]
 8001638:	4a1f      	ldr	r2, [pc, #124]	; (80016b8 <OC1Config+0x108>)
 800163a:	4293      	cmp	r3, r2
 800163c:	d120      	bne.n	8001680 <OC1Config+0xd0>
 800163e:	697b      	ldr	r3, [r7, #20]
 8001640:	2208      	movs	r2, #8
 8001642:	4393      	bics	r3, r2
 8001644:	1c1a      	adds	r2, r3, #0
 8001646:	683b      	ldr	r3, [r7, #0]
 8001648:	695b      	ldr	r3, [r3, #20]
 800164a:	009b      	lsls	r3, r3, #2
 800164c:	4313      	orrs	r3, r2
 800164e:	617b      	str	r3, [r7, #20]
 8001650:	697b      	ldr	r3, [r7, #20]
 8001652:	2204      	movs	r2, #4
 8001654:	4393      	bics	r3, r2
 8001656:	1c1a      	adds	r2, r3, #0
 8001658:	683b      	ldr	r3, [r7, #0]
 800165a:	689b      	ldr	r3, [r3, #8]
 800165c:	009b      	lsls	r3, r3, #2
 800165e:	4313      	orrs	r3, r2
 8001660:	617b      	str	r3, [r7, #20]
 8001662:	693b      	ldr	r3, [r7, #16]
 8001664:	4a15      	ldr	r2, [pc, #84]	; (80016bc <OC1Config+0x10c>)
 8001666:	401a      	ands	r2, r3
 8001668:	683b      	ldr	r3, [r7, #0]
 800166a:	699b      	ldr	r3, [r3, #24]
 800166c:	4313      	orrs	r3, r2
 800166e:	613b      	str	r3, [r7, #16]
 8001670:	693b      	ldr	r3, [r7, #16]
 8001672:	4a13      	ldr	r2, [pc, #76]	; (80016c0 <OC1Config+0x110>)
 8001674:	401a      	ands	r2, r3
 8001676:	683b      	ldr	r3, [r7, #0]
 8001678:	69db      	ldr	r3, [r3, #28]
 800167a:	005b      	lsls	r3, r3, #1
 800167c:	4313      	orrs	r3, r2
 800167e:	613b      	str	r3, [r7, #16]
 8001680:	687b      	ldr	r3, [r7, #4]
 8001682:	693a      	ldr	r2, [r7, #16]
 8001684:	605a      	str	r2, [r3, #4]
 8001686:	687b      	ldr	r3, [r7, #4]
 8001688:	68fa      	ldr	r2, [r7, #12]
 800168a:	619a      	str	r2, [r3, #24]
 800168c:	683b      	ldr	r3, [r7, #0]
 800168e:	68db      	ldr	r3, [r3, #12]
 8001690:	687a      	ldr	r2, [r7, #4]
 8001692:	1c10      	adds	r0, r2, #0
 8001694:	1c19      	adds	r1, r3, #0
 8001696:	f7ff fe43 	bl	8001320 <LL_TIM_OC_SetCompareCH1>
 800169a:	687b      	ldr	r3, [r7, #4]
 800169c:	697a      	ldr	r2, [r7, #20]
 800169e:	621a      	str	r2, [r3, #32]
 80016a0:	2301      	movs	r3, #1
 80016a2:	1c18      	adds	r0, r3, #0
 80016a4:	46bd      	mov	sp, r7
 80016a6:	b006      	add	sp, #24
 80016a8:	bd80      	pop	{r7, pc}
 80016aa:	46c0      	nop			; (mov r8, r8)
 80016ac:	40012c00 	.word	0x40012c00
 80016b0:	40014000 	.word	0x40014000
 80016b4:	40014400 	.word	0x40014400
 80016b8:	40014800 	.word	0x40014800
 80016bc:	fffffeff 	.word	0xfffffeff
 80016c0:	fffffdff 	.word	0xfffffdff

080016c4 <OC2Config>:
 80016c4:	b580      	push	{r7, lr}
 80016c6:	b086      	sub	sp, #24
 80016c8:	af00      	add	r7, sp, #0
 80016ca:	6078      	str	r0, [r7, #4]
 80016cc:	6039      	str	r1, [r7, #0]
 80016ce:	2300      	movs	r3, #0
 80016d0:	60fb      	str	r3, [r7, #12]
 80016d2:	2300      	movs	r3, #0
 80016d4:	617b      	str	r3, [r7, #20]
 80016d6:	2300      	movs	r3, #0
 80016d8:	613b      	str	r3, [r7, #16]
 80016da:	687b      	ldr	r3, [r7, #4]
 80016dc:	6a1b      	ldr	r3, [r3, #32]
 80016de:	2210      	movs	r2, #16
 80016e0:	4393      	bics	r3, r2
 80016e2:	1c1a      	adds	r2, r3, #0
 80016e4:	687b      	ldr	r3, [r7, #4]
 80016e6:	621a      	str	r2, [r3, #32]
 80016e8:	687b      	ldr	r3, [r7, #4]
 80016ea:	6a1b      	ldr	r3, [r3, #32]
 80016ec:	617b      	str	r3, [r7, #20]
 80016ee:	687b      	ldr	r3, [r7, #4]
 80016f0:	685b      	ldr	r3, [r3, #4]
 80016f2:	613b      	str	r3, [r7, #16]
 80016f4:	687b      	ldr	r3, [r7, #4]
 80016f6:	699b      	ldr	r3, [r3, #24]
 80016f8:	60fb      	str	r3, [r7, #12]
 80016fa:	68fb      	ldr	r3, [r7, #12]
 80016fc:	4a31      	ldr	r2, [pc, #196]	; (80017c4 <OC2Config+0x100>)
 80016fe:	4013      	ands	r3, r2
 8001700:	60fb      	str	r3, [r7, #12]
 8001702:	68fb      	ldr	r3, [r7, #12]
 8001704:	4a30      	ldr	r2, [pc, #192]	; (80017c8 <OC2Config+0x104>)
 8001706:	401a      	ands	r2, r3
 8001708:	683b      	ldr	r3, [r7, #0]
 800170a:	681b      	ldr	r3, [r3, #0]
 800170c:	021b      	lsls	r3, r3, #8
 800170e:	4313      	orrs	r3, r2
 8001710:	60fb      	str	r3, [r7, #12]
 8001712:	697b      	ldr	r3, [r7, #20]
 8001714:	2220      	movs	r2, #32
 8001716:	4393      	bics	r3, r2
 8001718:	1c1a      	adds	r2, r3, #0
 800171a:	683b      	ldr	r3, [r7, #0]
 800171c:	691b      	ldr	r3, [r3, #16]
 800171e:	011b      	lsls	r3, r3, #4
 8001720:	4313      	orrs	r3, r2
 8001722:	617b      	str	r3, [r7, #20]
 8001724:	697b      	ldr	r3, [r7, #20]
 8001726:	2210      	movs	r2, #16
 8001728:	4393      	bics	r3, r2
 800172a:	1c1a      	adds	r2, r3, #0
 800172c:	683b      	ldr	r3, [r7, #0]
 800172e:	685b      	ldr	r3, [r3, #4]
 8001730:	011b      	lsls	r3, r3, #4
 8001732:	4313      	orrs	r3, r2
 8001734:	617b      	str	r3, [r7, #20]
 8001736:	687b      	ldr	r3, [r7, #4]
 8001738:	4a24      	ldr	r2, [pc, #144]	; (80017cc <OC2Config+0x108>)
 800173a:	4293      	cmp	r3, r2
 800173c:	d00b      	beq.n	8001756 <OC2Config+0x92>
 800173e:	687b      	ldr	r3, [r7, #4]
 8001740:	4a23      	ldr	r2, [pc, #140]	; (80017d0 <OC2Config+0x10c>)
 8001742:	4293      	cmp	r3, r2
 8001744:	d007      	beq.n	8001756 <OC2Config+0x92>
 8001746:	687b      	ldr	r3, [r7, #4]
 8001748:	4a22      	ldr	r2, [pc, #136]	; (80017d4 <OC2Config+0x110>)
 800174a:	4293      	cmp	r3, r2
 800174c:	d003      	beq.n	8001756 <OC2Config+0x92>
 800174e:	687b      	ldr	r3, [r7, #4]
 8001750:	4a21      	ldr	r2, [pc, #132]	; (80017d8 <OC2Config+0x114>)
 8001752:	4293      	cmp	r3, r2
 8001754:	d121      	bne.n	800179a <OC2Config+0xd6>
 8001756:	697b      	ldr	r3, [r7, #20]
 8001758:	2280      	movs	r2, #128	; 0x80
 800175a:	4393      	bics	r3, r2
 800175c:	1c1a      	adds	r2, r3, #0
 800175e:	683b      	ldr	r3, [r7, #0]
 8001760:	695b      	ldr	r3, [r3, #20]
 8001762:	019b      	lsls	r3, r3, #6
 8001764:	4313      	orrs	r3, r2
 8001766:	617b      	str	r3, [r7, #20]
 8001768:	697b      	ldr	r3, [r7, #20]
 800176a:	2240      	movs	r2, #64	; 0x40
 800176c:	4393      	bics	r3, r2
 800176e:	1c1a      	adds	r2, r3, #0
 8001770:	683b      	ldr	r3, [r7, #0]
 8001772:	689b      	ldr	r3, [r3, #8]
 8001774:	019b      	lsls	r3, r3, #6
 8001776:	4313      	orrs	r3, r2
 8001778:	617b      	str	r3, [r7, #20]
 800177a:	693b      	ldr	r3, [r7, #16]
 800177c:	4a17      	ldr	r2, [pc, #92]	; (80017dc <OC2Config+0x118>)
 800177e:	401a      	ands	r2, r3
 8001780:	683b      	ldr	r3, [r7, #0]
 8001782:	699b      	ldr	r3, [r3, #24]
 8001784:	009b      	lsls	r3, r3, #2
 8001786:	4313      	orrs	r3, r2
 8001788:	613b      	str	r3, [r7, #16]
 800178a:	693b      	ldr	r3, [r7, #16]
 800178c:	4a14      	ldr	r2, [pc, #80]	; (80017e0 <OC2Config+0x11c>)
 800178e:	401a      	ands	r2, r3
 8001790:	683b      	ldr	r3, [r7, #0]
 8001792:	69db      	ldr	r3, [r3, #28]
 8001794:	00db      	lsls	r3, r3, #3
 8001796:	4313      	orrs	r3, r2
 8001798:	613b      	str	r3, [r7, #16]
 800179a:	687b      	ldr	r3, [r7, #4]
 800179c:	693a      	ldr	r2, [r7, #16]
 800179e:	605a      	str	r2, [r3, #4]
 80017a0:	687b      	ldr	r3, [r7, #4]
 80017a2:	68fa      	ldr	r2, [r7, #12]
 80017a4:	619a      	str	r2, [r3, #24]
 80017a6:	683b      	ldr	r3, [r7, #0]
 80017a8:	68db      	ldr	r3, [r3, #12]
 80017aa:	687a      	ldr	r2, [r7, #4]
 80017ac:	1c10      	adds	r0, r2, #0
 80017ae:	1c19      	adds	r1, r3, #0
 80017b0:	f7ff fdc2 	bl	8001338 <LL_TIM_OC_SetCompareCH2>
 80017b4:	687b      	ldr	r3, [r7, #4]
 80017b6:	697a      	ldr	r2, [r7, #20]
 80017b8:	621a      	str	r2, [r3, #32]
 80017ba:	2301      	movs	r3, #1
 80017bc:	1c18      	adds	r0, r3, #0
 80017be:	46bd      	mov	sp, r7
 80017c0:	b006      	add	sp, #24
 80017c2:	bd80      	pop	{r7, pc}
 80017c4:	fffffcff 	.word	0xfffffcff
 80017c8:	ffff8fff 	.word	0xffff8fff
 80017cc:	40012c00 	.word	0x40012c00
 80017d0:	40014000 	.word	0x40014000
 80017d4:	40014400 	.word	0x40014400
 80017d8:	40014800 	.word	0x40014800
 80017dc:	fffffbff 	.word	0xfffffbff
 80017e0:	fffff7ff 	.word	0xfffff7ff

080017e4 <OC3Config>:
 80017e4:	b580      	push	{r7, lr}
 80017e6:	b086      	sub	sp, #24
 80017e8:	af00      	add	r7, sp, #0
 80017ea:	6078      	str	r0, [r7, #4]
 80017ec:	6039      	str	r1, [r7, #0]
 80017ee:	2300      	movs	r3, #0
 80017f0:	60fb      	str	r3, [r7, #12]
 80017f2:	2300      	movs	r3, #0
 80017f4:	617b      	str	r3, [r7, #20]
 80017f6:	2300      	movs	r3, #0
 80017f8:	613b      	str	r3, [r7, #16]
 80017fa:	687b      	ldr	r3, [r7, #4]
 80017fc:	6a1b      	ldr	r3, [r3, #32]
 80017fe:	4a37      	ldr	r2, [pc, #220]	; (80018dc <OC3Config+0xf8>)
 8001800:	401a      	ands	r2, r3
 8001802:	687b      	ldr	r3, [r7, #4]
 8001804:	621a      	str	r2, [r3, #32]
 8001806:	687b      	ldr	r3, [r7, #4]
 8001808:	6a1b      	ldr	r3, [r3, #32]
 800180a:	617b      	str	r3, [r7, #20]
 800180c:	687b      	ldr	r3, [r7, #4]
 800180e:	685b      	ldr	r3, [r3, #4]
 8001810:	613b      	str	r3, [r7, #16]
 8001812:	687b      	ldr	r3, [r7, #4]
 8001814:	69db      	ldr	r3, [r3, #28]
 8001816:	60fb      	str	r3, [r7, #12]
 8001818:	68fb      	ldr	r3, [r7, #12]
 800181a:	2203      	movs	r2, #3
 800181c:	4393      	bics	r3, r2
 800181e:	60fb      	str	r3, [r7, #12]
 8001820:	68fb      	ldr	r3, [r7, #12]
 8001822:	2270      	movs	r2, #112	; 0x70
 8001824:	4393      	bics	r3, r2
 8001826:	1c1a      	adds	r2, r3, #0
 8001828:	683b      	ldr	r3, [r7, #0]
 800182a:	681b      	ldr	r3, [r3, #0]
 800182c:	4313      	orrs	r3, r2
 800182e:	60fb      	str	r3, [r7, #12]
 8001830:	697b      	ldr	r3, [r7, #20]
 8001832:	4a2b      	ldr	r2, [pc, #172]	; (80018e0 <OC3Config+0xfc>)
 8001834:	401a      	ands	r2, r3
 8001836:	683b      	ldr	r3, [r7, #0]
 8001838:	691b      	ldr	r3, [r3, #16]
 800183a:	021b      	lsls	r3, r3, #8
 800183c:	4313      	orrs	r3, r2
 800183e:	617b      	str	r3, [r7, #20]
 8001840:	697b      	ldr	r3, [r7, #20]
 8001842:	4a26      	ldr	r2, [pc, #152]	; (80018dc <OC3Config+0xf8>)
 8001844:	401a      	ands	r2, r3
 8001846:	683b      	ldr	r3, [r7, #0]
 8001848:	685b      	ldr	r3, [r3, #4]
 800184a:	021b      	lsls	r3, r3, #8
 800184c:	4313      	orrs	r3, r2
 800184e:	617b      	str	r3, [r7, #20]
 8001850:	687b      	ldr	r3, [r7, #4]
 8001852:	4a24      	ldr	r2, [pc, #144]	; (80018e4 <OC3Config+0x100>)
 8001854:	4293      	cmp	r3, r2
 8001856:	d00b      	beq.n	8001870 <OC3Config+0x8c>
 8001858:	687b      	ldr	r3, [r7, #4]
 800185a:	4a23      	ldr	r2, [pc, #140]	; (80018e8 <OC3Config+0x104>)
 800185c:	4293      	cmp	r3, r2
 800185e:	d007      	beq.n	8001870 <OC3Config+0x8c>
 8001860:	687b      	ldr	r3, [r7, #4]
 8001862:	4a22      	ldr	r2, [pc, #136]	; (80018ec <OC3Config+0x108>)
 8001864:	4293      	cmp	r3, r2
 8001866:	d003      	beq.n	8001870 <OC3Config+0x8c>
 8001868:	687b      	ldr	r3, [r7, #4]
 800186a:	4a21      	ldr	r2, [pc, #132]	; (80018f0 <OC3Config+0x10c>)
 800186c:	4293      	cmp	r3, r2
 800186e:	d11f      	bne.n	80018b0 <OC3Config+0xcc>
 8001870:	697b      	ldr	r3, [r7, #20]
 8001872:	4a20      	ldr	r2, [pc, #128]	; (80018f4 <OC3Config+0x110>)
 8001874:	401a      	ands	r2, r3
 8001876:	683b      	ldr	r3, [r7, #0]
 8001878:	695b      	ldr	r3, [r3, #20]
 800187a:	029b      	lsls	r3, r3, #10
 800187c:	4313      	orrs	r3, r2
 800187e:	617b      	str	r3, [r7, #20]
 8001880:	697b      	ldr	r3, [r7, #20]
 8001882:	4a1d      	ldr	r2, [pc, #116]	; (80018f8 <OC3Config+0x114>)
 8001884:	401a      	ands	r2, r3
 8001886:	683b      	ldr	r3, [r7, #0]
 8001888:	689b      	ldr	r3, [r3, #8]
 800188a:	029b      	lsls	r3, r3, #10
 800188c:	4313      	orrs	r3, r2
 800188e:	617b      	str	r3, [r7, #20]
 8001890:	693b      	ldr	r3, [r7, #16]
 8001892:	4a1a      	ldr	r2, [pc, #104]	; (80018fc <OC3Config+0x118>)
 8001894:	401a      	ands	r2, r3
 8001896:	683b      	ldr	r3, [r7, #0]
 8001898:	699b      	ldr	r3, [r3, #24]
 800189a:	011b      	lsls	r3, r3, #4
 800189c:	4313      	orrs	r3, r2
 800189e:	613b      	str	r3, [r7, #16]
 80018a0:	693b      	ldr	r3, [r7, #16]
 80018a2:	4a17      	ldr	r2, [pc, #92]	; (8001900 <OC3Config+0x11c>)
 80018a4:	401a      	ands	r2, r3
 80018a6:	683b      	ldr	r3, [r7, #0]
 80018a8:	69db      	ldr	r3, [r3, #28]
 80018aa:	015b      	lsls	r3, r3, #5
 80018ac:	4313      	orrs	r3, r2
 80018ae:	613b      	str	r3, [r7, #16]
 80018b0:	687b      	ldr	r3, [r7, #4]
 80018b2:	693a      	ldr	r2, [r7, #16]
 80018b4:	605a      	str	r2, [r3, #4]
 80018b6:	687b      	ldr	r3, [r7, #4]
 80018b8:	68fa      	ldr	r2, [r7, #12]
 80018ba:	61da      	str	r2, [r3, #28]
 80018bc:	683b      	ldr	r3, [r7, #0]
 80018be:	68db      	ldr	r3, [r3, #12]
 80018c0:	687a      	ldr	r2, [r7, #4]
 80018c2:	1c10      	adds	r0, r2, #0
 80018c4:	1c19      	adds	r1, r3, #0
 80018c6:	f7ff fd43 	bl	8001350 <LL_TIM_OC_SetCompareCH3>
 80018ca:	687b      	ldr	r3, [r7, #4]
 80018cc:	697a      	ldr	r2, [r7, #20]
 80018ce:	621a      	str	r2, [r3, #32]
 80018d0:	2301      	movs	r3, #1
 80018d2:	1c18      	adds	r0, r3, #0
 80018d4:	46bd      	mov	sp, r7
 80018d6:	b006      	add	sp, #24
 80018d8:	bd80      	pop	{r7, pc}
 80018da:	46c0      	nop			; (mov r8, r8)
 80018dc:	fffffeff 	.word	0xfffffeff
 80018e0:	fffffdff 	.word	0xfffffdff
 80018e4:	40012c00 	.word	0x40012c00
 80018e8:	40014000 	.word	0x40014000
 80018ec:	40014400 	.word	0x40014400
 80018f0:	40014800 	.word	0x40014800
 80018f4:	fffff7ff 	.word	0xfffff7ff
 80018f8:	fffffbff 	.word	0xfffffbff
 80018fc:	ffffefff 	.word	0xffffefff
 8001900:	ffffdfff 	.word	0xffffdfff

08001904 <OC4Config>:
 8001904:	b580      	push	{r7, lr}
 8001906:	b086      	sub	sp, #24
 8001908:	af00      	add	r7, sp, #0
 800190a:	6078      	str	r0, [r7, #4]
 800190c:	6039      	str	r1, [r7, #0]
 800190e:	2300      	movs	r3, #0
 8001910:	613b      	str	r3, [r7, #16]
 8001912:	2300      	movs	r3, #0
 8001914:	60fb      	str	r3, [r7, #12]
 8001916:	2300      	movs	r3, #0
 8001918:	617b      	str	r3, [r7, #20]
 800191a:	687b      	ldr	r3, [r7, #4]
 800191c:	6a1b      	ldr	r3, [r3, #32]
 800191e:	4a2b      	ldr	r2, [pc, #172]	; (80019cc <OC4Config+0xc8>)
 8001920:	401a      	ands	r2, r3
 8001922:	687b      	ldr	r3, [r7, #4]
 8001924:	621a      	str	r2, [r3, #32]
 8001926:	687b      	ldr	r3, [r7, #4]
 8001928:	6a1b      	ldr	r3, [r3, #32]
 800192a:	60fb      	str	r3, [r7, #12]
 800192c:	687b      	ldr	r3, [r7, #4]
 800192e:	685b      	ldr	r3, [r3, #4]
 8001930:	617b      	str	r3, [r7, #20]
 8001932:	687b      	ldr	r3, [r7, #4]
 8001934:	69db      	ldr	r3, [r3, #28]
 8001936:	613b      	str	r3, [r7, #16]
 8001938:	693b      	ldr	r3, [r7, #16]
 800193a:	4a25      	ldr	r2, [pc, #148]	; (80019d0 <OC4Config+0xcc>)
 800193c:	4013      	ands	r3, r2
 800193e:	613b      	str	r3, [r7, #16]
 8001940:	693b      	ldr	r3, [r7, #16]
 8001942:	4a24      	ldr	r2, [pc, #144]	; (80019d4 <OC4Config+0xd0>)
 8001944:	401a      	ands	r2, r3
 8001946:	683b      	ldr	r3, [r7, #0]
 8001948:	681b      	ldr	r3, [r3, #0]
 800194a:	021b      	lsls	r3, r3, #8
 800194c:	4313      	orrs	r3, r2
 800194e:	613b      	str	r3, [r7, #16]
 8001950:	68fb      	ldr	r3, [r7, #12]
 8001952:	4a21      	ldr	r2, [pc, #132]	; (80019d8 <OC4Config+0xd4>)
 8001954:	401a      	ands	r2, r3
 8001956:	683b      	ldr	r3, [r7, #0]
 8001958:	691b      	ldr	r3, [r3, #16]
 800195a:	031b      	lsls	r3, r3, #12
 800195c:	4313      	orrs	r3, r2
 800195e:	60fb      	str	r3, [r7, #12]
 8001960:	68fb      	ldr	r3, [r7, #12]
 8001962:	4a1a      	ldr	r2, [pc, #104]	; (80019cc <OC4Config+0xc8>)
 8001964:	401a      	ands	r2, r3
 8001966:	683b      	ldr	r3, [r7, #0]
 8001968:	685b      	ldr	r3, [r3, #4]
 800196a:	031b      	lsls	r3, r3, #12
 800196c:	4313      	orrs	r3, r2
 800196e:	60fb      	str	r3, [r7, #12]
 8001970:	687b      	ldr	r3, [r7, #4]
 8001972:	4a1a      	ldr	r2, [pc, #104]	; (80019dc <OC4Config+0xd8>)
 8001974:	4293      	cmp	r3, r2
 8001976:	d00b      	beq.n	8001990 <OC4Config+0x8c>
 8001978:	687b      	ldr	r3, [r7, #4]
 800197a:	4a19      	ldr	r2, [pc, #100]	; (80019e0 <OC4Config+0xdc>)
 800197c:	4293      	cmp	r3, r2
 800197e:	d007      	beq.n	8001990 <OC4Config+0x8c>
 8001980:	687b      	ldr	r3, [r7, #4]
 8001982:	4a18      	ldr	r2, [pc, #96]	; (80019e4 <OC4Config+0xe0>)
 8001984:	4293      	cmp	r3, r2
 8001986:	d003      	beq.n	8001990 <OC4Config+0x8c>
 8001988:	687b      	ldr	r3, [r7, #4]
 800198a:	4a17      	ldr	r2, [pc, #92]	; (80019e8 <OC4Config+0xe4>)
 800198c:	4293      	cmp	r3, r2
 800198e:	d107      	bne.n	80019a0 <OC4Config+0x9c>
 8001990:	697b      	ldr	r3, [r7, #20]
 8001992:	4a16      	ldr	r2, [pc, #88]	; (80019ec <OC4Config+0xe8>)
 8001994:	401a      	ands	r2, r3
 8001996:	683b      	ldr	r3, [r7, #0]
 8001998:	699b      	ldr	r3, [r3, #24]
 800199a:	019b      	lsls	r3, r3, #6
 800199c:	4313      	orrs	r3, r2
 800199e:	617b      	str	r3, [r7, #20]
 80019a0:	687b      	ldr	r3, [r7, #4]
 80019a2:	697a      	ldr	r2, [r7, #20]
 80019a4:	605a      	str	r2, [r3, #4]
 80019a6:	687b      	ldr	r3, [r7, #4]
 80019a8:	693a      	ldr	r2, [r7, #16]
 80019aa:	61da      	str	r2, [r3, #28]
 80019ac:	683b      	ldr	r3, [r7, #0]
 80019ae:	68db      	ldr	r3, [r3, #12]
 80019b0:	687a      	ldr	r2, [r7, #4]
 80019b2:	1c10      	adds	r0, r2, #0
 80019b4:	1c19      	adds	r1, r3, #0
 80019b6:	f7ff fcd7 	bl	8001368 <LL_TIM_OC_SetCompareCH4>
 80019ba:	687b      	ldr	r3, [r7, #4]
 80019bc:	68fa      	ldr	r2, [r7, #12]
 80019be:	621a      	str	r2, [r3, #32]
 80019c0:	2301      	movs	r3, #1
 80019c2:	1c18      	adds	r0, r3, #0
 80019c4:	46bd      	mov	sp, r7
 80019c6:	b006      	add	sp, #24
 80019c8:	bd80      	pop	{r7, pc}
 80019ca:	46c0      	nop			; (mov r8, r8)
 80019cc:	ffffefff 	.word	0xffffefff
 80019d0:	fffffcff 	.word	0xfffffcff
 80019d4:	ffff8fff 	.word	0xffff8fff
 80019d8:	ffffdfff 	.word	0xffffdfff
 80019dc:	40012c00 	.word	0x40012c00
 80019e0:	40014000 	.word	0x40014000
 80019e4:	40014400 	.word	0x40014400
 80019e8:	40014800 	.word	0x40014800
 80019ec:	ffffbfff 	.word	0xffffbfff

080019f0 <atexit>:
 80019f0:	b508      	push	{r3, lr}
 80019f2:	1c01      	adds	r1, r0, #0
 80019f4:	2200      	movs	r2, #0
 80019f6:	2000      	movs	r0, #0
 80019f8:	2300      	movs	r3, #0
 80019fa:	f000 f83f 	bl	8001a7c <__register_exitproc>
 80019fe:	bd08      	pop	{r3, pc}

08001a00 <__libc_fini_array>:
 8001a00:	b538      	push	{r3, r4, r5, lr}
 8001a02:	4b09      	ldr	r3, [pc, #36]	; (8001a28 <__libc_fini_array+0x28>)
 8001a04:	4c09      	ldr	r4, [pc, #36]	; (8001a2c <__libc_fini_array+0x2c>)
 8001a06:	1ae4      	subs	r4, r4, r3
 8001a08:	10a4      	asrs	r4, r4, #2
 8001a0a:	d009      	beq.n	8001a20 <__libc_fini_array+0x20>
 8001a0c:	4a08      	ldr	r2, [pc, #32]	; (8001a30 <__libc_fini_array+0x30>)
 8001a0e:	18a5      	adds	r5, r4, r2
 8001a10:	00ad      	lsls	r5, r5, #2
 8001a12:	18ed      	adds	r5, r5, r3
 8001a14:	682b      	ldr	r3, [r5, #0]
 8001a16:	3c01      	subs	r4, #1
 8001a18:	4798      	blx	r3
 8001a1a:	3d04      	subs	r5, #4
 8001a1c:	2c00      	cmp	r4, #0
 8001a1e:	d1f9      	bne.n	8001a14 <__libc_fini_array+0x14>
 8001a20:	f000 f8a8 	bl	8001b74 <_fini>
 8001a24:	bd38      	pop	{r3, r4, r5, pc}
 8001a26:	46c0      	nop			; (mov r8, r8)
 8001a28:	08001b90 	.word	0x08001b90
 8001a2c:	08001b94 	.word	0x08001b94
 8001a30:	3fffffff 	.word	0x3fffffff

08001a34 <__libc_init_array>:
 8001a34:	b570      	push	{r4, r5, r6, lr}
 8001a36:	4e0d      	ldr	r6, [pc, #52]	; (8001a6c <__libc_init_array+0x38>)
 8001a38:	4d0d      	ldr	r5, [pc, #52]	; (8001a70 <__libc_init_array+0x3c>)
 8001a3a:	2400      	movs	r4, #0
 8001a3c:	1bad      	subs	r5, r5, r6
 8001a3e:	10ad      	asrs	r5, r5, #2
 8001a40:	d005      	beq.n	8001a4e <__libc_init_array+0x1a>
 8001a42:	00a3      	lsls	r3, r4, #2
 8001a44:	58f3      	ldr	r3, [r6, r3]
 8001a46:	3401      	adds	r4, #1
 8001a48:	4798      	blx	r3
 8001a4a:	42a5      	cmp	r5, r4
 8001a4c:	d1f9      	bne.n	8001a42 <__libc_init_array+0xe>
 8001a4e:	f000 f88b 	bl	8001b68 <_init>
 8001a52:	4e08      	ldr	r6, [pc, #32]	; (8001a74 <__libc_init_array+0x40>)
 8001a54:	4d08      	ldr	r5, [pc, #32]	; (8001a78 <__libc_init_array+0x44>)
 8001a56:	2400      	movs	r4, #0
 8001a58:	1bad      	subs	r5, r5, r6
 8001a5a:	10ad      	asrs	r5, r5, #2
 8001a5c:	d005      	beq.n	8001a6a <__libc_init_array+0x36>
 8001a5e:	00a3      	lsls	r3, r4, #2
 8001a60:	58f3      	ldr	r3, [r6, r3]
 8001a62:	3401      	adds	r4, #1
 8001a64:	4798      	blx	r3
 8001a66:	42a5      	cmp	r5, r4
 8001a68:	d1f9      	bne.n	8001a5e <__libc_init_array+0x2a>
 8001a6a:	bd70      	pop	{r4, r5, r6, pc}
 8001a6c:	08001b88 	.word	0x08001b88
 8001a70:	08001b88 	.word	0x08001b88
 8001a74:	08001b88 	.word	0x08001b88
 8001a78:	08001b90 	.word	0x08001b90

08001a7c <__register_exitproc>:
 8001a7c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001a7e:	4644      	mov	r4, r8
 8001a80:	465f      	mov	r7, fp
 8001a82:	4656      	mov	r6, sl
 8001a84:	464d      	mov	r5, r9
 8001a86:	469b      	mov	fp, r3
 8001a88:	4b2f      	ldr	r3, [pc, #188]	; (8001b48 <__register_exitproc+0xcc>)
 8001a8a:	b4f0      	push	{r4, r5, r6, r7}
 8001a8c:	681c      	ldr	r4, [r3, #0]
 8001a8e:	23a4      	movs	r3, #164	; 0xa4
 8001a90:	005b      	lsls	r3, r3, #1
 8001a92:	1c05      	adds	r5, r0, #0
 8001a94:	58e0      	ldr	r0, [r4, r3]
 8001a96:	1c0e      	adds	r6, r1, #0
 8001a98:	4690      	mov	r8, r2
 8001a9a:	2800      	cmp	r0, #0
 8001a9c:	d04b      	beq.n	8001b36 <__register_exitproc+0xba>
 8001a9e:	6843      	ldr	r3, [r0, #4]
 8001aa0:	2b1f      	cmp	r3, #31
 8001aa2:	dc0d      	bgt.n	8001ac0 <__register_exitproc+0x44>
 8001aa4:	1c5c      	adds	r4, r3, #1
 8001aa6:	2d00      	cmp	r5, #0
 8001aa8:	d121      	bne.n	8001aee <__register_exitproc+0x72>
 8001aaa:	3302      	adds	r3, #2
 8001aac:	009b      	lsls	r3, r3, #2
 8001aae:	6044      	str	r4, [r0, #4]
 8001ab0:	501e      	str	r6, [r3, r0]
 8001ab2:	2000      	movs	r0, #0
 8001ab4:	bc3c      	pop	{r2, r3, r4, r5}
 8001ab6:	4690      	mov	r8, r2
 8001ab8:	4699      	mov	r9, r3
 8001aba:	46a2      	mov	sl, r4
 8001abc:	46ab      	mov	fp, r5
 8001abe:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8001ac0:	4b22      	ldr	r3, [pc, #136]	; (8001b4c <__register_exitproc+0xd0>)
 8001ac2:	2b00      	cmp	r3, #0
 8001ac4:	d03c      	beq.n	8001b40 <__register_exitproc+0xc4>
 8001ac6:	20c8      	movs	r0, #200	; 0xc8
 8001ac8:	0040      	lsls	r0, r0, #1
 8001aca:	e000      	b.n	8001ace <__register_exitproc+0x52>
 8001acc:	bf00      	nop
 8001ace:	2800      	cmp	r0, #0
 8001ad0:	d036      	beq.n	8001b40 <__register_exitproc+0xc4>
 8001ad2:	22a4      	movs	r2, #164	; 0xa4
 8001ad4:	2300      	movs	r3, #0
 8001ad6:	0052      	lsls	r2, r2, #1
 8001ad8:	58a1      	ldr	r1, [r4, r2]
 8001ada:	6043      	str	r3, [r0, #4]
 8001adc:	6001      	str	r1, [r0, #0]
 8001ade:	50a0      	str	r0, [r4, r2]
 8001ae0:	3240      	adds	r2, #64	; 0x40
 8001ae2:	5083      	str	r3, [r0, r2]
 8001ae4:	3204      	adds	r2, #4
 8001ae6:	5083      	str	r3, [r0, r2]
 8001ae8:	2401      	movs	r4, #1
 8001aea:	2d00      	cmp	r5, #0
 8001aec:	d0dd      	beq.n	8001aaa <__register_exitproc+0x2e>
 8001aee:	009a      	lsls	r2, r3, #2
 8001af0:	4691      	mov	r9, r2
 8001af2:	4481      	add	r9, r0
 8001af4:	4642      	mov	r2, r8
 8001af6:	2188      	movs	r1, #136	; 0x88
 8001af8:	464f      	mov	r7, r9
 8001afa:	507a      	str	r2, [r7, r1]
 8001afc:	22c4      	movs	r2, #196	; 0xc4
 8001afe:	0052      	lsls	r2, r2, #1
 8001b00:	4690      	mov	r8, r2
 8001b02:	4480      	add	r8, r0
 8001b04:	4642      	mov	r2, r8
 8001b06:	3987      	subs	r1, #135	; 0x87
 8001b08:	4099      	lsls	r1, r3
 8001b0a:	6812      	ldr	r2, [r2, #0]
 8001b0c:	468a      	mov	sl, r1
 8001b0e:	430a      	orrs	r2, r1
 8001b10:	4694      	mov	ip, r2
 8001b12:	4642      	mov	r2, r8
 8001b14:	4661      	mov	r1, ip
 8001b16:	6011      	str	r1, [r2, #0]
 8001b18:	2284      	movs	r2, #132	; 0x84
 8001b1a:	4649      	mov	r1, r9
 8001b1c:	465f      	mov	r7, fp
 8001b1e:	0052      	lsls	r2, r2, #1
 8001b20:	508f      	str	r7, [r1, r2]
 8001b22:	2d02      	cmp	r5, #2
 8001b24:	d1c1      	bne.n	8001aaa <__register_exitproc+0x2e>
 8001b26:	1c02      	adds	r2, r0, #0
 8001b28:	4655      	mov	r5, sl
 8001b2a:	328d      	adds	r2, #141	; 0x8d
 8001b2c:	32ff      	adds	r2, #255	; 0xff
 8001b2e:	6811      	ldr	r1, [r2, #0]
 8001b30:	430d      	orrs	r5, r1
 8001b32:	6015      	str	r5, [r2, #0]
 8001b34:	e7b9      	b.n	8001aaa <__register_exitproc+0x2e>
 8001b36:	1c20      	adds	r0, r4, #0
 8001b38:	304d      	adds	r0, #77	; 0x4d
 8001b3a:	30ff      	adds	r0, #255	; 0xff
 8001b3c:	50e0      	str	r0, [r4, r3]
 8001b3e:	e7ae      	b.n	8001a9e <__register_exitproc+0x22>
 8001b40:	2001      	movs	r0, #1
 8001b42:	4240      	negs	r0, r0
 8001b44:	e7b6      	b.n	8001ab4 <__register_exitproc+0x38>
 8001b46:	46c0      	nop			; (mov r8, r8)
 8001b48:	08001b84 	.word	0x08001b84
 8001b4c:	00000000 	.word	0x00000000

08001b50 <register_fini>:
 8001b50:	b508      	push	{r3, lr}
 8001b52:	4b03      	ldr	r3, [pc, #12]	; (8001b60 <register_fini+0x10>)
 8001b54:	2b00      	cmp	r3, #0
 8001b56:	d002      	beq.n	8001b5e <register_fini+0xe>
 8001b58:	4802      	ldr	r0, [pc, #8]	; (8001b64 <register_fini+0x14>)
 8001b5a:	f7ff ff49 	bl	80019f0 <atexit>
 8001b5e:	bd08      	pop	{r3, pc}
 8001b60:	00000000 	.word	0x00000000
 8001b64:	08001a01 	.word	0x08001a01

08001b68 <_init>:
 8001b68:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001b6a:	46c0      	nop			; (mov r8, r8)
 8001b6c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8001b6e:	bc08      	pop	{r3}
 8001b70:	469e      	mov	lr, r3
 8001b72:	4770      	bx	lr

08001b74 <_fini>:
 8001b74:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001b76:	46c0      	nop			; (mov r8, r8)
 8001b78:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8001b7a:	bc08      	pop	{r3}
 8001b7c:	469e      	mov	lr, r3
 8001b7e:	4770      	bx	lr
